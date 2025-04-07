
pop [stream_ptr]
pop [arg_0]
pop [arg_1]
pop [arg_2]
pop [arg_3]

mov r3, 0
mov r4, 0

call yield_task
call yield_task
call yield_task
call yield_task
call yield_task
call yield_task
call yield_task
call yield_task
call yield_task
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

call yield_task
mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_0
loop_start_0:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_0
loop_end_0:

sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_1
loop_start_1:

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_2
loop_start_2:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_1
loop_end_1:

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_3
loop_start_3:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_2
loop_end_2:

sub r3, 1
sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_4
loop_start_4:

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_3
loop_end_3:

add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_5
loop_start_5:

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_4
loop_end_4:

add r3, 1
call yield_task
add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_6
loop_start_6:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_5
loop_end_5:

sub r3, 1
sub r3, 1
sub r3, 1
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

sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_7
loop_start_7:

add r3, 1
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1
sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_8
loop_start_8:

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_9
loop_start_9:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_6
loop_end_6:

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_7
loop_end_7:

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_10
loop_start_10:

sub r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_8
loop_end_8:

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_11
loop_start_11:

sub r3, 1
sub r3, 1
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

mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_9
loop_end_9:

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1

sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_10
loop_end_10:

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
cmp.8 [r4], 0
ifz jmp loop_end_12
loop_start_12:

sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_11
loop_end_11:

add r3, 1
add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_13
loop_start_13:

sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_14
loop_start_14:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_12
loop_end_12:

sub r3, 1
call yield_task
sub r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_13
loop_end_13:

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_15
loop_start_15:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_14
loop_end_14:

mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1
sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_16
loop_start_16:

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_15
loop_end_15:

sub r3, 1
sub r3, 1
sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_17
loop_start_17:

add r3, 1
add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1
sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_16
loop_end_16:

add r3, 1
add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_18
loop_start_18:

sub r3, 1
sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
add r3, 1
add r3, 1
call yield_task
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_17
loop_end_17:

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_19
loop_start_19:

sub r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_18
loop_end_18:

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_20
loop_start_20:

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_21
loop_start_21:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_19
loop_end_19:

sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_22
loop_start_22:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_20
loop_end_20:


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_21
loop_end_21:

add r3, 1
add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_23
loop_start_23:

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_24
loop_start_24:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_22
loop_end_22:

sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_23
loop_end_23:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_25
loop_start_25:

sub r3, 1
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

sub r3, 1
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
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_24
loop_end_24:

add r3, 1
add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_26
loop_start_26:

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_25
loop_end_25:

add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_27
loop_start_27:

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_26
loop_end_26:

sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_28
loop_start_28:

sub r3, 1
sub r3, 1
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
add r3, 1
add r3, 1
add r3, 1
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1

call yield_task

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_27
loop_end_27:

sub r3, 1
sub r3, 1
sub r3, 1
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
add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_29
loop_start_29:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_28
loop_end_28:

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_30
loop_start_30:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_29
loop_end_29:

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
cmp.8 [r4], 0
ifz jmp loop_end_31
loop_start_31:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_30
loop_end_30:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_32
loop_start_32:

sub r3, 1
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

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_31
loop_end_31:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_33
loop_start_33:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_32
loop_end_32:

sub r3, 1
mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
add r3, 1
sub r3, 1
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

call yield_task
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
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_34
loop_start_34:

add r3, 1
add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1
sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_33
loop_end_33:

add r3, 1
add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_35
loop_start_35:

sub r3, 1
sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_34
loop_end_34:

sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_36
loop_start_36:

sub r3, 1
sub r3, 1
sub r3, 1
sub r3, 1
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

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
add r3, 1
add r3, 1
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_35
loop_end_35:

sub r3, 1
sub r3, 1
sub r3, 1
sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_37
loop_start_37:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_36
loop_end_36:

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
cmp.8 [r4], 0
ifz jmp loop_end_38
loop_start_38:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_37
loop_end_37:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_39
loop_start_39:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_38
loop_end_38:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_40
loop_start_40:

sub r3, 1
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

call yield_task
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

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_39
loop_end_39:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_41
loop_start_41:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_40
loop_end_40:

sub r3, 1
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

call yield_task
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
cmp.8 [r4], 0
ifz jmp loop_end_42
loop_start_42:

sub r3, 1
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
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_41
loop_end_41:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_43
loop_start_43:

sub r3, 1
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

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_42
loop_end_42:

sub r3, 1
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
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
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
cmp.8 [r4], 0
ifz jmp loop_end_44
loop_start_44:

sub r3, 1
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
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_43
loop_end_43:

sub r3, 1
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

call yield_task
mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_45
loop_start_45:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_44
loop_end_44:

sub r3, 1
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
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
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

call yield_task

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_46
loop_start_46:

sub r3, 1
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
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_45
loop_end_45:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_47
loop_start_47:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_46
loop_end_46:

sub r3, 1
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
add.8 [r4], 1

call yield_task
mov r4, mem
add r4, r3
add.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_48
loop_start_48:

sub r3, 1
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
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_47
loop_end_47:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_49
loop_start_49:

sub r3, 1
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

call yield_task
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

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_48
loop_end_48:

sub r3, 1
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
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
add r3, 1
add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_50
loop_start_50:

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_49
loop_end_49:

add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_51
loop_start_51:

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_50
loop_end_50:

sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_52
loop_start_52:

sub r3, 1
sub r3, 1
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
add r3, 1
add r3, 1
add r3, 1
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_51
loop_end_51:

sub r3, 1
sub r3, 1
sub r3, 1
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
add r3, 1
add r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_53
loop_start_53:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_52
loop_end_52:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_54
loop_start_54:

sub r3, 1
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

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_53
loop_end_53:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_55
loop_start_55:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_54
loop_end_54:

sub r3, 1
mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
add r3, 1
sub r3, 1
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

call yield_task
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
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_56
loop_start_56:

add r3, 1
add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1
sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_55
loop_end_55:

add r3, 1
add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_57
loop_start_57:

sub r3, 1
sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_56
loop_end_56:

sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_58
loop_start_58:

sub r3, 1
sub r3, 1
sub r3, 1
sub r3, 1
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

mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
add r3, 1
add r3, 1
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_57
loop_end_57:

sub r3, 1
sub r3, 1
sub r3, 1
sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_59
loop_start_59:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_58
loop_end_58:

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
cmp.8 [r4], 0
ifz jmp loop_end_60
loop_start_60:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_59
loop_end_59:

sub r3, 1
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

call yield_task
mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_61
loop_start_61:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_60
loop_end_60:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_62
loop_start_62:

sub r3, 1
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

call yield_task
mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_61
loop_end_61:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_63
loop_start_63:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_62
loop_end_62:

sub r3, 1
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

call yield_task
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
cmp.8 [r4], 0
ifz jmp loop_end_64
loop_start_64:

sub r3, 1
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
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_63
loop_end_63:

sub r3, 1
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
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
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
cmp.8 [r4], 0
ifz jmp loop_end_65
loop_start_65:

sub r3, 1
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

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_64
loop_end_64:

sub r3, 1
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

call yield_task
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
cmp.8 [r4], 0
ifz jmp loop_end_66
loop_start_66:

sub r3, 1
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
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_65
loop_end_65:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_67
loop_start_67:

sub r3, 1
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
sub.8 [r4], 1

call yield_task

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_66
loop_end_66:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_68
loop_start_68:

sub r3, 1
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
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_67
loop_end_67:

sub r3, 1
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

call yield_task
mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_69
loop_start_69:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_68
loop_end_68:

sub r3, 1
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

call yield_task
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
cmp.8 [r4], 0
ifz jmp loop_end_70
loop_start_70:

sub r3, 1
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
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_69
loop_end_69:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_71
loop_start_71:

sub r3, 1
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

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_70
loop_end_70:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_72
loop_start_72:

sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

call yield_task
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

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_71
loop_end_71:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_73
loop_start_73:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_72
loop_end_72:

sub r3, 1
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
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_74
loop_start_74:

sub r3, 1
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

call yield_task
mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_73
loop_end_73:

sub r3, 1
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
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_75
loop_start_75:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_74
loop_end_74:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_76
loop_start_76:

sub r3, 1
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
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_75
loop_end_75:

call yield_task
sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_77
loop_start_77:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_76
loop_end_76:

sub r3, 1
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
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
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
cmp.8 [r4], 0
ifz jmp loop_end_78
loop_start_78:

sub r3, 1
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
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_77
loop_end_77:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_79
loop_start_79:

sub r3, 1
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

call yield_task
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_78
loop_end_78:

sub r3, 1
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
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_80
loop_start_80:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_79
loop_end_79:

sub r3, 1
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

call yield_task
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
cmp.8 [r4], 0
ifz jmp loop_end_81
loop_start_81:

sub r3, 1
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
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_80
loop_end_80:

sub r3, 1
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
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_82
loop_start_82:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_81
loop_end_81:

sub r3, 1
sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_83
loop_start_83:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_82
loop_end_82:

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_84
loop_start_84:

call yield_task
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_83
loop_end_83:

sub r3, 1
sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_85
loop_start_85:

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_84
loop_end_84:

add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_86
loop_start_86:

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_85
loop_end_85:

add r3, 1
add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_87
loop_start_87:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_86
loop_end_86:

sub r3, 1
sub r3, 1
sub r3, 1
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

sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_88
loop_start_88:

add r3, 1
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1
call yield_task
sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_89
loop_start_89:

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_90
loop_start_90:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_87
loop_end_87:

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_88
loop_end_88:

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_91
loop_start_91:

sub r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_89
loop_end_89:

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_92
loop_start_92:

sub r3, 1
sub r3, 1
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
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_90
loop_end_90:

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1

sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_91
loop_end_91:

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

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_93
loop_start_93:

sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_92
loop_end_92:

add r3, 1
add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_94
loop_start_94:

sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_95
loop_start_95:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_93
loop_end_93:

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_94
loop_end_94:

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_96
loop_start_96:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_95
loop_end_95:

mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1
sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_97
loop_start_97:

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_96
loop_end_96:

sub r3, 1
call yield_task
sub r3, 1
sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_98
loop_start_98:

add r3, 1
add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1
sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_97
loop_end_97:

add r3, 1
add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_99
loop_start_99:

sub r3, 1
sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_98
loop_end_98:

sub r3, 1
add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_100
loop_start_100:

sub r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_99
loop_end_99:

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_101
loop_start_101:

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_102
loop_start_102:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_100
loop_end_100:

sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_103
loop_start_103:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_101
loop_end_101:


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_102
loop_end_102:

call yield_task
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_104
loop_start_104:

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_105
loop_start_105:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_103
loop_end_103:

sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_104
loop_end_104:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_106
loop_start_106:

sub r3, 1
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
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_105
loop_end_105:

add r3, 1
add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_107
loop_start_107:

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

call yield_task
sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_106
loop_end_106:

add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_108
loop_start_108:

sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_107
loop_end_107:

sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_109
loop_start_109:

sub r3, 1
sub r3, 1
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
add r3, 1
add r3, 1
add r3, 1
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_108
loop_end_108:

sub r3, 1
sub r3, 1
sub r3, 1
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
add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_110
loop_start_110:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_109
loop_end_109:

add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_111
loop_start_111:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_110
loop_end_110:

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
cmp.8 [r4], 0
ifz jmp loop_end_112
loop_start_112:

call yield_task
sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_111
loop_end_111:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_113
loop_start_113:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_112
loop_end_112:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_114
loop_start_114:

sub r3, 1
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

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_113
loop_end_113:

sub r3, 1
mov r4, mem
add r4, r3
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
add r3, 1
sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_115
loop_start_115:

add r3, 1
add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

sub r3, 1
sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1

call yield_task

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_114
loop_end_114:

add r3, 1
add r3, 1
add r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_116
loop_start_116:

sub r3, 1
sub r3, 1
sub r3, 1
mov r4, mem
add r4, r3
add.8 [r4], 1

add r3, 1
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_115
loop_end_115:

sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_117
loop_start_117:

sub r3, 1
sub r3, 1
sub r3, 1
sub r3, 1
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
add r3, 1
add r3, 1
add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_116
loop_end_116:

sub r3, 1
sub r3, 1
sub r3, 1
sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_118
loop_start_118:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_117
loop_end_117:

call yield_task
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
cmp.8 [r4], 0
ifz jmp loop_end_119
loop_start_119:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_118
loop_end_118:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_120
loop_start_120:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_119
loop_end_119:

sub r3, 1
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
call yield_task
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
cmp.8 [r4], 0
ifz jmp loop_end_121
loop_start_121:

sub r3, 1
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
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_120
loop_end_120:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_122
loop_start_122:

sub r3, 1
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

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_121
loop_end_121:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_123
loop_start_123:

sub r3, 1
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

call yield_task
mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_122
loop_end_122:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_124
loop_start_124:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_123
loop_end_123:

sub r3, 1
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
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
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

call yield_task

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_125
loop_start_125:

sub r3, 1
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
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_124
loop_end_124:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_126
loop_start_126:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_125
loop_end_125:

sub r3, 1
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

call yield_task
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
mov.8 [temp], [r4]
mov r2, temp
mov r0, 1
mov r1, [stream_ptr]
call write
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
cmp.8 [r4], 0
ifz jmp loop_end_127
loop_start_127:

sub r3, 1
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
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_126
loop_end_126:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_128
loop_start_128:

sub r3, 1
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
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_127
loop_end_127:

sub r3, 1
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
add.8 [r4], 1

mov r4, mem
add r4, r3
add.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifz jmp loop_end_129
loop_start_129:

sub r3, 1
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
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_128
loop_end_128:

sub r3, 1
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
cmp.8 [r4], 0
ifz jmp loop_end_130
loop_start_130:

sub r3, 1
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
sub.8 [r4], 1

mov r4, mem
add r4, r3
sub.8 [r4], 1

add r3, 1
mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_129
loop_end_129:

sub r3, 1
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
call yield_task
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
cmp.8 [r4], 0
ifz jmp loop_end_131
loop_start_131:

mov r4, mem
add r4, r3
sub.8 [r4], 1


mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_130
loop_end_130:

sub r3, 1
sub r3, 1
sub r3, 1

mov r4, mem
add r4, r3
cmp.8 [r4], 0
ifnz jmp loop_start_131
loop_end_131:

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

