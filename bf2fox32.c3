// requires c3c b6f5938eda9109c8777cf451503580e47ed08dd9
// TODO: directly output machine code
module bf2fox32;

import std::io;

const MEM_PTR = "r3";
const TEMP_REG = "r4";
const MEM_NAME = "mem";
const TEMP_CHAR = "temp";

const LOAD_AT_PTR = "mov " +++ TEMP_REG +++", " +++ MEM_NAME +++ `
add ` +++ TEMP_REG +++ ", " +++ MEM_PTR;

fn int main(String[] args)
{
	usz total_loops, closed_loops;
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

	io::fprintfn(&output_file, `
pop [stream_ptr]
pop [arg_0]
pop [arg_1]
pop [arg_2]
pop [arg_3]

mov %s, 0
mov %s, 0
`, MEM_PTR, TEMP_REG);

	usz i;
	while (try char c = input_file.read_byte())
	{
		i++;
		if (i % 50 == 0) io::fprintfn(&output_file, "call yield_task");
		$if $feature(DEBUG):
			io::fprintfn(&output_file, `
mov.8 %s, '%c'
mov.8 [%s], %s
mov r2, %s
mov r0, 1
mov r1, [stream_ptr]
call write`,
TEMP_REG, c,
TEMP_CHAR, TEMP_REG,
TEMP_CHAR);
			io::fprintfn(&output_file, `
mov.8 %s, %s
mov.8 [%s], %s
mov r2, %s
mov r0, 1
mov r1, [stream_ptr]
call write`,
TEMP_REG, 10,
TEMP_CHAR, TEMP_REG,
TEMP_CHAR);
		$endif


		switch (c)
		{
			case '+':
				io::fprintfn(&output_file, LOAD_AT_PTR +++ `
add.8 [%s], 1
`, 
TEMP_REG);
			case '-':
				io::fprintfn(&output_file, LOAD_AT_PTR +++ `
sub.8 [%s], 1
`, 
TEMP_REG);
			case '>':
				io::fprintfn(&output_file, "add %s, 1", MEM_PTR);
			case '<':
				io::fprintfn(&output_file, "sub %s, 1", MEM_PTR);
			case '.':
				io::fprintfn(&output_file, LOAD_AT_PTR +++ `
mov.8 [%s], [%s]
mov r2, %s
mov r0, 1
mov r1, [stream_ptr]
call write`,
TEMP_CHAR, TEMP_REG,
TEMP_CHAR);
			case ',':
				io::eprintfn("ERROR: '%c' unimplemented", c);
				return 1;
			case '[':
				io::fprintfn(&output_file, `
%s
cmp.8 [%s], 0
ifz jmp loop_end_%s
loop_start_%s:
`,
LOAD_AT_PTR,
TEMP_REG,
total_loops,
total_loops,
);
				total_loops ++;
			case ']':
				io::fprintfn(&output_file, `
%s
cmp.8 [%s], 0
ifnz jmp loop_start_%s
loop_end_%s:
`,
LOAD_AT_PTR,
TEMP_REG,
closed_loops,
closed_loops);
				closed_loops ++;
			default:
				io::eprintfn("WARN: ignoring char '%c'", c);
		}
	}

	io::fprintfn(&output_file, "call end_current_task");

	io::fprintfn(&output_file, `
stream_ptr: data.32 0
arg_0: data.32 0
arg_1: data.32 0
arg_2: data.32 0
arg_3: data.32 0
%s: data.8 0
%s: data.fill 0, 30000
#include "./fox32rom/fox32rom.def"
#include "./fox32os/fox32os.def"
`, TEMP_CHAR, MEM_NAME);
	return 0;
}


