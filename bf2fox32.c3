// requires c3c b6f5938eda9109c8777cf451503580e47ed08dd9
// TODO: directly output machine code
module bf2fox32;

import std::io;
import std::collections::list;

const MEM_PTR = "r3";
const TEMP_REG = "r4";

// const LOAD_AT_PTR = "mov " +++ TEMP_REG +++", " +++ MEM_NAME +++ `
// add ` +++ TEMP_REG +++ ", " +++ MEM_PTR;

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
				if (insts.len() !=  0 && insts[^1].type == ADD)
				{
					insts[^1].repeats ++;
				}
				else
				{
					insts.push({ADD, 1});
				}
			case '-':
				if (insts.len() !=  0 && insts[^1].type == SUB)
				{
					insts[^1].repeats ++;
				}
				else
				{
					insts.push({SUB, 1});
				}
			case '>':
				if (insts.len() !=  0 && insts[^1].type == NEXT)
				{
					insts[^1].repeats ++;
				}
				else
				{
					insts.push({NEXT, 1});
				}
			case '<':
				if (insts.len() !=  0 && insts[^1].type == PREV)
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


	fox32.pop("[stream_ptr]");
	fox32.pop("[arg_0]");
	fox32.pop("[arg_1]");
	fox32.pop("[arg_2]");
	fox32.pop("[arg_3]");

	fox32.mov(MEM_PTR, 0);
	fox32.mov("[temp_ch]", 0);

/*	// Allocate the program memory
	fox32.mov("r0", 30000);
	fox32.call("allocate_memory");
	fox32.mov("[mem], r0")
	fox32.cmp("r0", 0);
	fox32.cond(z, call, "end_current_task"); // Exit if allocation fails
*/

	usz total_loops;
	usz total_reads;
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
			fox32.push(TEMP_REG);
			fox32.call("yield_task");
			fox32.pop(TEMP_REG);
			fox32.pop(MEM_PTR);
		}

		// fox32.mov("r5", i);
		// fox32.cmp(MEM_PTR, 1000);
		// fox32.cond(gt, brk);
		$if $feature(DEBUG):
			if (try idx = "+-><[],.".index_of_char(inst.type))
			{
				fox32.printcc(c);
				fox32.flush();
			}
		$endif

		if (i == 0 || ((prev == '>' || prev == '<') && (inst.type != '<' && inst.type != '>')))
		{
			// Loads the address of the current cell in memory pointed at by MEM_PTR into TEMP_REG
			fox32.load_at_ptr();
		}

		switch (inst.type)
		{
			case ADD:

				fox32.add(fox32.deref(TEMP_REG), inst.repeats, W8);
			case SUB:
				fox32.sub(fox32.deref(TEMP_REG), inst.repeats, W8);
			case NEXT:
				fox32.add(MEM_PTR, inst.repeats);
			case PREV:
				fox32.sub(MEM_PTR, inst.repeats);
			case PRINT:
				fox32.printc();
			case READ:
				@pool()
				{
					fox32.flush();
					fox32.label(string::tformat("read_%s", total_reads));
					fox32.mov("r0", 1);
					fox32.mov("r1", "[stream_ptr]");
					fox32.mov("r2", "temp_ch");
					fox32.call("read");

					fox32.cmp("[temp_ch]", 0, W8);
					fox32.cond(z, jmp, string::tformat("read_%s", total_reads));
				};

				total_reads ++;

			case JUMP_F:
				fox32.cmp(0, fox32.deref(TEMP_REG), W8);
				@pool()
				{
					fox32.cond(z, jmp, string::tformat("loop_end_%s", total_loops));
					fox32.label(string::tformat("loop_start_%s", total_loops));
				};

				braces.push(total_loops);
				total_loops ++;
			case JUMP_B:
				usz idx = braces.pop()!!;
				fox32.cmp(0, fox32.deref(TEMP_REG), W8);
				@pool()
				{
					fox32.cond(nz, jmp, string::tformat("loop_start_%s", idx));
					fox32.label(string::tformat("loop_end_%s", idx));
				};
		}
	}

	fox32.call("end_current_task");

	io::fprintfn(&output_file, `
stream_ptr: data.32 0
arg_0: data.32 0
arg_1: data.32 0
arg_2: data.32 0
arg_3: data.32 0
temp_ch: data.8 0
; mem: data.32 0
mem: data.fill 0, 30000
#include "./fox32rom/fox32rom.def"
#include "./fox32os/fox32os.def"
`);
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

macro void Fox32.const_(self, String name, val)
{
	io::fprintfn(self.out, "const %s: %s", name, val);
}

fn void Fox32.push(self, String out, Width w = W32)
{
	io::fprintfn(self.out, "push.%s %s", w.name, out);
}

fn void Fox32.pop(self, String out, Width w = W32)
{
	io::fprintfn(self.out, "pop.%s %s", w.name, out);
}

macro void Fox32.add(&self, String out, num, Width w = W32)
{
	io::fprintfn(self.out, "add.%s %s, %s", w.name, out, num);
}

macro void Fox32.sub(self, String dst, src, Width w = W32)
{
	io::fprintfn(self.out, "sub.%s %s, %s", w.name, dst, src);
}

fn void Fox32.call(&self, String name)
{
	io::fprintfn(self.out, "call %s", name);
}

fn void Fox32.jmp(&self, String name)
{
	io::fprintfn(self.out, "jmp %s", name);
}

macro void Fox32.mov(&self, String dst, src, Width w = W32)
{
	io::fprintfn(self.out, "mov.%s %s, %s", w.name, dst, src);
}

macro void Fox32.cmp(&self, dst, src, Width w = W32)
{
	io::fprintfn(self.out, "cmp.%s %s, %s", w.name, dst, src);
}

fn void Fox32.brk(&self)
{
	io::fprintfn(self.out, "brk");
}

fn void Fox32.label(&self, String name)
{
	io::fprintfn(self.out, "%s:", name);
}

macro void Fox32.cond(&self, #cond, #inst, ...) @safemacro
{
	(void)io::fprintf(self.out, "if" +++ $stringify(#cond) +++ " ");
	self.#inst($vasplat);
}

macro void Fox32.printcc(&self, val)
{
	self.mov(TEMP_REG, val, W8);
	self.printc();
}

fn void Fox32.printc(&self)
{
	self.mov("[temp_ch]", self.deref(TEMP_REG), W8);
	self.mov("r2", "temp_ch");
	self.mov("r0", 1);
	self.mov("r1", "[stream_ptr]");
	self.call("write");
}

fn void Fox32.flush(self)
{
	self.printcc(0xFE);
	self.printc();
	self.printc();
}

fn void Fox32.load_at_ptr(&self)
{
	self.mov(TEMP_REG, "mem");
	self.add(TEMP_REG, MEM_PTR);
}

macro String Fox32.deref(self, String $val)
{
	return "[" +++ $val +++ "]";
}
