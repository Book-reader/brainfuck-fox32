
pop [stream_ptr]
pop [arg_0]
pop [arg_1]
pop [arg_2]
pop [arg_3]

mov r3, 0
mov r4, 0

call yield_task

mov r5, 0
cmp r3, 1000
ifgt brk

add r3, 1

mov r5, 1
cmp r3, 1000
ifgt brk

add r3, 1

mov r5, 2
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 3
cmp r3, 1000
ifgt brk

sub r3, 1

mov r5, 4
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r5, 5
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r5, 6
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
cmp.8 0, [r4]
ifz jmp loop_end_0
loop_start_0:


mov r5, 7
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
cmp.8 0, [r4]
ifz jmp loop_end_1
loop_start_1:


mov r5, 8
cmp r3, 1000
ifgt brk

sub r3, 1

mov r5, 9
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 10
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 11
cmp r3, 1000
ifgt brk

add r3, 1

mov r5, 12
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r5, 13
cmp r3, 1000
ifgt brk

add r3, 1

mov r5, 14
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r5, 15
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r5, 16
cmp r3, 1000
ifgt brk

add r3, 1

mov r5, 17
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 18
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 19
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 20
cmp r3, 1000
ifgt brk

add r3, 1

mov r5, 21
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 22
cmp r3, 1000
ifgt brk

sub r3, 1

mov r5, 23
cmp r3, 1000
ifgt brk

sub r3, 1

mov r5, 24
cmp r3, 1000
ifgt brk

sub r3, 1

mov r5, 25
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
cmp.8 0, [r4]
ifnz jmp loop_start_1
loop_end_1:


mov r5, 26
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r5, 27
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r5, 28
cmp r3, 1000
ifgt brk

add r3, 1

mov r5, 29
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 30
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 31
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 32
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 33
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
cmp.8 0, [r4]
ifnz jmp loop_start_0
loop_end_0:


mov r5, 34
cmp r3, 1000
ifgt brk

sub r3, 1

mov r5, 35
cmp r3, 1000
ifgt brk

sub r3, 1

mov r5, 36
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write

mov r5, 37
cmp r3, 1000
ifgt brk

sub r3, 1

mov r5, 38
cmp r3, 1000
ifgt brk

sub r3, 1

mov r5, 39
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r5, 40
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write

mov r5, 41
cmp r3, 1000
ifgt brk

sub r3, 1

mov r5, 42
cmp r3, 1000
ifgt brk

sub r3, 1

mov r5, 43
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write

mov r5, 44
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write

mov r5, 45
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 46
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 47
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 48
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write

mov r5, 49
cmp r3, 1000
ifgt brk

add r3, 1
call yield_task

mov r5, 50
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write

mov r5, 51
cmp r3, 1000
ifgt brk

sub r3, 1

mov r5, 52
cmp r3, 1000
ifgt brk

sub r3, 1

mov r5, 53
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r5, 54
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write

mov r5, 55
cmp r3, 1000
ifgt brk

add r3, 1

mov r5, 56
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write

mov r5, 57
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 58
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 59
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 60
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write

mov r5, 61
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r5, 62
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r5, 63
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r5, 64
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r5, 65
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r5, 66
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r5, 67
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write

mov r5, 68
cmp r3, 1000
ifgt brk

add r3, 1

mov r5, 69
cmp r3, 1000
ifgt brk

add r3, 1

mov r5, 70
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r5, 71
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write

mov r5, 72
cmp r3, 1000
ifgt brk

sub r3, 1

mov r5, 73
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r5, 74
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write

mov r5, 75
cmp r3, 1000
ifgt brk

add r3, 1

mov r5, 76
cmp r3, 1000
ifgt brk

add r3, 1

mov r5, 77
cmp r3, 1000
ifgt brk

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write

mov r5, 78
cmp r3, 1000
ifgt brk

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

