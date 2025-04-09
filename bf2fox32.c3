// requires c3c b6f5938eda9109c8777cf451503580e47ed08dd9
// TODO: directly output machine code / use xrasm & port to fox32 either with assembly or jackal
module bf2fox32;

import std::io;
import std::collections::list;

const MEM_PTR = "r3";
const CELL_REG = "r4";
const TEMP_REG = "r5";

enum BfInstType : char (inline char c)
{
	ADD = '+',
	SUB = '-',
	NEXT = '>',
	PREV = '<',
	PRINT = '.',
	READ = ',',
	JUMP_F = '[',
	JUMP_B = ']',
}

struct BfInst
{
	BfInstType type;
	char repeats;
}

fn int main(String[] args)
{
	if (args.len != 3)
	{
		io::eprintfn("Usage: %s <input file>.b <output file>.asm", args[0]);
		return 1;
	}
	File! input_file = file::open(args[1], "rb");
	if (catch err = input_file)
	{
		io::eprintfn("ERROR: opening %s: %s", args[1], err);
		return 1;
	}
	defer input_file.close()!!;

	File! output_file = file::open(args[2], "wb");
	if (catch err = output_file)
	{
		io::eprintfn("ERROR: opening %s: %s", args[2], err);
		return 1;
	}
	defer output_file.close()!!;
	Fox32 fox32 = {&output_file};

	List(<BfInst>) insts;
	insts.new_init();
	defer insts.free();

	while (try char c = input_file.read_byte())
	{
		switch (c)
		{
			case '+':
				if (insts.len() !=  0 && insts[^1].type == ADD && insts[^1].repeats < char.max)
				{
					insts[^1].repeats ++;
				}
				else
				{
					insts.push({ADD, 1});
				}
			case '-':
				if (insts.len() !=  0 && insts[^1].type == SUB && insts[^1].repeats < char.max)
				{
					insts[^1].repeats ++;
				}
				else
				{
					insts.push({SUB, 1});
				}
			case '>':
				if (insts.len() !=  0 && insts[^1].type == NEXT && insts[^1].repeats < char.max)
				{
					insts[^1].repeats ++;
				}
				else
				{
					insts.push({NEXT, 1});
				}
			case '<':
				if (insts.len() !=  0 && insts[^1].type == PREV && insts[^1].repeats < char.max)
				{
					insts[^1].repeats ++;
				}
				else
				{
					insts.push({PREV, 1});
				}
			case '.':
				insts.push({PRINT, 1});
			case ',':
				insts.push({READ, 1});
			case '[':
				insts.push({JUMP_F, 1});
			case ']':
				insts.push({JUMP_B, 1});
			default:
				break;
		}
	}


	fox32.const_("INPUT_BUF_SIZE", 100);

	fox32.pop("[stream_ptr]");
	fox32.pop("[arg_0]");
	fox32.pop("[arg_1]");
	fox32.pop("[arg_2]");
	fox32.pop("[arg_3]");

	fox32.mov(MEM_PTR, 0);
	fox32.mov("[temp_ch]", 0);

	// Allocate the program memory
	fox32.mov("r0", 30000);
	fox32.call("allocate_memory");
	fox32.mov("[mem]", "r0");
	fox32.cmp("r0", 0);
	fox32.cond(z, call, "end_current_task"); // Exit if allocation fails


	usz hash;
	List(<usz>) braces;
	braces.new_init();
	defer braces.free();

	BfInstType prev;
	foreach (i, inst : insts)
	{
		defer prev = inst.type;
		if (i % 256 == 0)
		{
			fox32.push(MEM_PTR);
			fox32.push(CELL_REG);
			fox32.call("yield_task");
			fox32.pop(CELL_REG);
			fox32.pop(MEM_PTR);
		}

		/*$if $feature(SAFETY):
			fox32.mov("r5", i);
			fox32.cmp(MEM_PTR, 30000);
			fox32.cond(gt, brk);
		$endif*/

		$if $feature(DEBUG):
			if (try idx = "+-><[],.".index_of_char(inst.type))
			{
				fox32.printcc(c);
				fox32.flush(); // There is a chance that this will simply break things because flush changes r0, r1, and r2.
			}
		$endif

		if (i == 0 || ((prev == '>' || prev == '<') && (inst.type != '<' && inst.type != '>')))
		{
			// Loads the address of the current cell in memory pointed at by MEM_PTR into CELL_REG
			fox32.load_at_ptr();
		}

		switch (inst.type)
		{
			case ADD:
				fox32.add(fox32.deref(CELL_REG), inst.repeats, W8);
			case SUB:
				fox32.sub(fox32.deref(CELL_REG), inst.repeats, W8);
			case NEXT:
				$if $feature(SAFETY):
					$error("Safety for '>' is not implemented yet");
				$else
					fox32.add(MEM_PTR, inst.repeats);
				$endif
			case PREV:
				$if $feature(SAFETY):
					$error("Safety for '<' is not implemented yet");
					/*@pool()
					{
						String label_over = string::tformat("prev_overflow_%s", hash);
						String label_done = string::tformat("prev_done_%s", hash);
						
						fox32.cmp(inst.repeats, MEM_PTR);
						fox32.cond(gt, jmp, label_over);
						fox32.sub(MEM_PTR, inst.repeats);
						fox32.rjmp(label_done, W8);

						fox32.label(label_over);
						fox32.brk();

						fox32.label(label_done);
					};
					hash ++;*/
				$else
					fox32.sub(MEM_PTR, inst.repeats);
				$endif
			case PRINT:
				fox32.printc();
			case READ:
				$if !$feature(NO_INPUT_BUF):
					// $error("INPUT_BUF is not implemented yet");
					fox32.flush();
					@pool()
					{
						String read_buf_name = string::tformat("read_buf_%s", hash); // The label that is run if the buffer is empty to fill it until newline
						String read_fill_name = string::tformat("read_fill_%s", hash); // The label that is run if the buffer isn't empty that just fills the current cell and decrements input_buf_idx
						String read_end_name = string::tformat("read_end_%s", hash); // Probably not needed

						fox32.cmp("[input_buf_idx]", "[input_buf_rev_idx]");
						fox32.cond(gt, jmp, read_fill_name);
						// Prepare the registers
						fox32.mov("r0", 1);
						fox32.mov("r1", "[stream_ptr]");

						fox32.label(read_buf_name);
						// Prepare r2 for a potentially changed input_buf_idx from the last iteration
						fox32.mov("r2", "input_buf");
						fox32.add("r2", "[input_buf_idx]"); // r2 now points at the current empty input_buf char

						fox32.call("read");

						// If the value is zero, try to read again
						fox32.cmp("[r2]", 0, W8);
						fox32.cond(z, jmp, read_buf_name);
						
						// Else append to the input buf
						fox32.add("[input_buf_idx]", 1);
						fox32.cmp("[input_buf_idx]", "INPUT_BUF_SIZE");
						fox32.cond(z, sub, "[input_buf_idx]", 1); // Constantly overwrite the last in the buffer if it is full

						// print overwrites r0, r1, and r2, I didn't spend 2 hours debugging this
						// I'm also not going to get print to handle it because it would add too many instructions
						fox32.@save("r2", "r0") 
						{
							fox32.printval("[r2]");
							fox32.flush();
						};

						// If the value wasn't a new line, go again
						fox32.cmp("[r2]", 0x0A, W8);
						fox32.cond(nz, jmp, read_buf_name);

						// TODO: I don't actually seem to get the backspace? but it works sometimes? maybe input handling on Lost Kingdom is messed up
						fox32.cmp("[r2]", 0x08, W8);
						fox32.cond(z, call, "print_backspace");

						// If the value was a new line, 
						fox32.label(read_fill_name);
						fox32.mov(TEMP_REG, "input_buf");
						fox32.add(TEMP_REG, "[input_buf_rev_idx]");
						fox32.mov(fox32.deref(CELL_REG), fox32.deref(TEMP_REG));
						// fox32.brk();
						fox32.add("[input_buf_rev_idx]", 1);
						fox32.cmp("[input_buf_idx]", "[input_buf_rev_idx]");
						fox32.cond(z, mov, "[input_buf_idx]", 0);
						fox32.cond(z, mov, "[input_buf_rev_idx]", 0);
					};
					hash ++;
				$else
					$echo("WARNING: NO_INPUT_BUF is not properly supported");
					@pool()
					{
						String read_name = string::tformat("read_%s", hash);
						fox32.flush();
						fox32.label(read_name);
						// TODO: most of this can be moved above the label, only the `call read` needs to be below
						fox32.mov("r0", 1);
						fox32.mov("r1", "[stream_ptr]");
						fox32.mov("r2", "temp_ch");
						fox32.call("read");

						fox32.cmp("[temp_ch]", 0, W8);
						fox32.cond(z, jmp, read_name);
					};

					hash ++;
				$endif
			case JUMP_F:
				fox32.cmp(0, fox32.deref(CELL_REG), W8);
				@pool()
				{
					fox32.cond(z, jmp, string::tformat("loop_end_%s", hash));
					fox32.label(string::tformat("loop_start_%s", hash));
				};

				braces.push(hash);
				hash ++;
			case JUMP_B:
				usz matching_hash = braces.pop()!!;
				fox32.cmp(0, fox32.deref(CELL_REG), W8);
				@pool()
				{
					fox32.cond(nz, jmp, string::tformat("loop_start_%s", matching_hash));
					fox32.label(string::tformat("loop_end_%s", matching_hash));
				};
		}
	}


	fox32.mov("r0", "[mem]");
	fox32.call("free_memory");
	fox32.call("end_current_task");

	fox32.@label("print_backspace")
	{
		fox32.print("backspace", 3);
		fox32.flush();
		fox32.ret();
	};

	fox32.data("stream_ptr");
	for (usz i = 0; i < 4; i++) @pool()
	{
		fox32.data(string::tformat("arg_%s", i));
	};
	fox32.data("temp_ch");
	fox32.data("mem");
	fox32.data_fill("flush_data", 3, 0xFE);
	fox32.data_many("backspace", Width.W8, 0x08, Width.W8, 0x20, Width.W8, 0x08);
	$if !$feature(NO_INPUT_BUF):
		fox32.data("input_buf_idx");
		fox32.data("input_buf_rev_idx");
		fox32.data_fill("input_buf", "INPUT_BUF_SIZE");
	$endif

	fox32.include("../fox32rom/fox32rom.def");
	fox32.include("../fox32os/fox32os.def");

	return 0;
}

enum Width : (String name)
{
	W8 = "8",
	W16 = "16",
	W32 = "32",
}

struct Fox32
{
	OutStream out;
}

def @Inst = {@tag("inst", true)};

macro void Fox32.const_(self, String name, val)
{
	io::fprintfn(self.out, "const %s: %s", name, val);
}

fn void Fox32.push(self, String out, Width w = W32) @Inst
{
	io::fprintfn(self.out, "push.%s %s", w.name, out);
}

fn void Fox32.pop(self, String out, Width w = W32) @Inst
{
	io::fprintfn(self.out, "pop.%s %s", w.name, out);
}

macro void Fox32.add(&self, String out, num, Width w = W32) @Inst
{
	io::fprintfn(self.out, "add.%s %s, %s", w.name, out, num);
}

macro void Fox32.sub(self, String dst, src, Width w = W32) @Inst
{
	io::fprintfn(self.out, "sub.%s %s, %s", w.name, dst, src);
}

fn void Fox32.call(&self, String name) @Inst
{
	io::fprintfn(self.out, "call %s", name);
}

fn void Fox32.jmp(&self, String name) @Inst
{
	io::fprintfn(self.out, "jmp %s", name);
}

fn void Fox32.rjmp(&self, String name, Width w) @Inst
{
	io::fprintfn(self.out, "rjmp.%s %s", w.name, name);
}

macro void Fox32.mov(&self, String dst, src, Width w = W32) @Inst
{
	io::fprintfn(self.out, "mov.%s %s, %s", w.name, dst, src);
}

macro void Fox32.cmp(&self, dst, src, Width w = W32) @Inst
{
	io::fprintfn(self.out, "cmp.%s %s, %s", w.name, dst, src);
}

fn void Fox32.brk(&self) @Inst
{
	io::fprintfn(self.out, "brk");
}

fn void Fox32.ret(&self) @Inst
{
	io::fprintfn(self.out, "ret");
}

fn void Fox32.label(&self, String name)
{
	io::fprintfn(self.out, "%s:", name);
}

macro void Fox32.cond(&self, #cond, #inst, ...) @safemacro
{
	$if !$typeof(*self).#inst.has_tagof("inst"):
		$error("can only use Fox32.cond with single instruction functions (e.g mov, jmp). if it is one mark it with @Inst");
	$endif
	(void)io::fprintf(self.out, "if" +++ $stringify(#cond) +++ " ");
	self.#inst($vasplat);
}

macro void Fox32.printcc(&self, val)
{
	self.mov(CELL_REG, val, W8);
	self.printc();
}

macro void Fox32.printval(self, String val)
{
	self.mov("[temp_ch]", val, W8);
	self.mov("r2", "temp_ch");
	self.mov("r0", 1);
	self.mov("r1", "[stream_ptr]");
	self.call("write");

}

macro void Fox32.print(self, val, len)
{
	self.mov("r2", val);
	self.mov("r0", len);
	self.mov("r1", "[stream_ptr]");
	self.call("write");
}

fn void Fox32.printc(&self)
{
	self.printval(self.deref(CELL_REG));
}

fn void Fox32.flush(self)
{
	self.print("flush_data", 3);
}

fn void Fox32.load_at_ptr(&self)
{
	self.mov(CELL_REG, "[mem]");
	self.add(CELL_REG, MEM_PTR);
}

macro String Fox32.deref(self, String $val)
{
	return "[" +++ $val +++ "]";
}

macro void Fox32.data(self, String name, Width w = W32, val = 0)
{
	io::fprintfn(self.out, "%s: data.%s %s", name, w.name, val);
}

macro void Fox32.data_fill(self, String name, length, val = 0)
{
	io::fprintfn(self.out, "%s: data.fill %s, %s", name, val, length);
}

macro void Fox32.data_many(self, String name, args...)
{
	(void)io::fprintf(self.out, "%s:", name);
	foreach (i, arg : args)
	{
		if (i % 2 == 0)
		{
			if (arg.type != Width.typeid) abort("every second argument to data_many must be a bitwidth, starting with the first one");
			(void)io::fprintf(self.out, " data.%s ", ((Width*)arg).name);
		}
		else
		{
			(void)io::fprintf(self.out, "%s", arg);
		}
	}
	io::fprintfn(self.out, "");
}

fn void Fox32.include(self, String filename)
{
	io::fprintfn(self.out, "#include \"%s\"", filename);
}

macro void Fox32.@save(self, ...; @body)
{
	$for (var $i = 0; $i < $vacount; $i++)
		self.push($vaconst[$i]);
	$endfor
	defer
	{
		$for (var $i2 = $vacount - 1; $i2 >= 0; $i2--)
			self.pop($vaconst[$i2]);
		$endfor
	}
	@body();
}

macro void Fox32.@label(self, String name; @body)
{
	self.label(name);
	@body();
}
