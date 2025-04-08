
pop [stream_ptr]
pop [arg_0]
pop [arg_1]
pop [arg_2]
pop [arg_3]

mov r3, 0
mov r4, 0


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_0
loop_start_0:


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_1
loop_start_1:


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_1
loop_end_1:


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_2
loop_start_2:


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_3
loop_start_3:


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_3
loop_end_3:


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_2
loop_end_2:


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_0
loop_end_0:

call end_current_task

stream_ptr: data.32 0
arg_0: data.32 0
arg_1: data.32 0
arg_2: data.32 0
arg_3: data.32 0
temp: data.8 0
mem: data.fill 0, 30000
#include "./fox32rom/fox32rom.def"
#include "./fox32os/fox32os.def"

