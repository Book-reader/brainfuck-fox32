
pop [stream_ptr]
pop [arg_0]
pop [arg_1]
pop [arg_2]
pop [arg_3]

mov r3, 0
mov r4, 0

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
cmp.8 0, [r4]
ifz jmp loop_end_0
loop_start_0:

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

call yield_task
mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1
sub r3, 1
sub r3, 1
sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
cmp.8 0, [r4]
ifnz jmp loop_start_0
loop_end_0:

add r3, 1
mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
add r3, 1
mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
sub r3, 1
sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
call yield_task
mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
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

