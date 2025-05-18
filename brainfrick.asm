;;

const TOK_ADD: 0x01
const TOK_SUB: 0x02
const TOK_NEXT: 0x03
const TOK_PREV: 0x04
const TOK_PRINT: 0x05
const TOK_READ: 0x06
const TOK_LOOP_F: 0x07
const TOK_LOOP_B: 0x08


pop [stream_ptr]
pop [arg_0]
pop [arg_1]
pop [arg_2]
pop [arg_3]

mov r0, [arg_0]
push r0
call get_current_disk_id
mov r1, r0
pop r0
mov r2, program_file_struct
call open
cmp r0, 0
ifnz jmp allocate_file
mov r0, file_not_found
call print
call end_current_task

allocate_file:
    mov r0, program_file_struct
    call get_size
    mov [program_raw_size], r0

    push r0
    call allocate_memory
    mov [program], r0
    pop r0
    ; The OS just seems to crash instead of returning 0 when OOM, but handle it anyway
    cmp r0, 0
    ifz jmp out_of_mem

load_file:
    mov r0, [program_raw_size]
    push r0
    call allocate_memory
    mov [repeats], r0
    pop r0
    cmp r0, 0
    ifz jmp out_of_mem
    
    mov r0, [program_raw_size]
    mov r1, program_file_struct
    mov r2, [program]
    call read
opt_loop:
    mov r0, [program]
    add r0, [program_ptr]

    mov r1, [program]
    add r1, [program_size]

    ; set the number of repeats to the default (1)
    mov r2, [repeats]
    add r2, [program_size]
    mov.8 [r2], 1

    cmp [program_ptr], [program_raw_size]
    ifz jmp loop_prepare

    cmp.8 [r0], '+'
    ifz jmp opt_op_add
    cmp.8 [r0], '-'
    ifz jmp opt_op_sub
    cmp.8 [r0], '>'
    ifz jmp opt_op_next
    cmp.8 [r0], '<'
    ifz jmp opt_op_prev
    cmp.8 [r0], '.'
    ifz jmp opt_op_print
    cmp.8 [r0], ','
    ifz jmp opt_op_read
    cmp.8 [r0], '['
    ifz jmp opt_op_loop_f
    cmp.8 [r0], ']'
    ifz jmp opt_op_loop_b

    jmp opt_loop_end

opt_op_add:
    movz.8 r3, TOK_ADD
    jmp lookahead_repeat

opt_op_sub:
    movz.8 r3, TOK_SUB
    jmp lookahead_repeat

opt_op_next:
    movz.8 r3, TOK_NEXT
    jmp lookahead_repeat

opt_op_prev:
    movz.8 r3, TOK_PREV
    jmp lookahead_repeat

opt_op_print:
    mov.8 [r1], TOK_PRINT
    jmp opt_loop_end_s

opt_op_read:
    mov.8 [r1], TOK_READ
    jmp opt_loop_end_s

opt_op_loop_f:
    mov.8 [r1], TOK_LOOP_F
    jmp opt_loop_end_s

opt_op_loop_b:
    mov.8 [r1], TOK_LOOP_B
    jmp opt_loop_end_s

; [r0], the char to check for repeats of
; [r1], the where the token is placed
; [r2], the current number of repeats
; r3, the token that the char corresponds to
; [program_ptr], the current index of the program that [r0] corresponds to
; [program_size], the current index of the program and repeats being overwritten by the token in r3
lookahead_repeat:
    mov r4, r0
    inc r4
    cmp.8 [r0], [r4]
    ifz jmp lookahead_repeat_loop_start

    mov.8 [r1], r3
    jmp opt_loop_end_s

lookahead_repeat_loop_start:
    mov.8 [r1], r3
lookahead_repeat_loop:
    inc.8 [r2]

    inc [program_ptr]
    mov r0, [program]
    add r0, [program_ptr]

    mov r4, r0
    inc r4

    ; check if the number of repeats is 255 and break to prevent wraparound
    cmp.8 [r2], 0xFF
    ifz jmp opt_loop_end_s
    cmp.8 [r0], [r4]
    ifz jmp lookahead_repeat_loop
    jmp opt_loop_end_s

opt_loop_end_s:
    inc [program_size]
opt_loop_end:
    inc [program_ptr]
    jmp opt_loop

loop_prepare:
   mov [program_ptr], 0

loop:
    inc [counter]
    cmp [counter], 256
    ifgteq call yield

    mov r0, [program]
    add r0, [program_ptr]
    cmp [program_ptr], [program_size]
    ifgt jmp exit

    mov r1, [repeats]
    add r1, [program_ptr]
    movz.8 r1, [r1]

    cmp.8 [r0], TOK_ADD
    ifz jmp op_add
    cmp.8 [r0], TOK_SUB
    ifz jmp op_sub
    cmp.8 [r0], TOK_NEXT
    ifz jmp op_next
    cmp.8 [r0], TOK_PREV
    ifz jmp op_prev
    cmp.8 [r0], TOK_PRINT
    ifz jmp op_print
    cmp.8 [r0], TOK_READ
    ifz jmp op_read
    cmp.8 [r0], TOK_LOOP_F
    ifz jmp op_loop_f
    cmp.8 [r0], TOK_LOOP_B
    ifz jmp op_loop_b

    jmp loop_end

op_add:
    mov.32 r0, memory
    add.32 r0, [memory_ptr]
    add.8 [r0], r1
    jmp loop_end

op_sub:
    mov r0, memory
    add r0, [memory_ptr]
    sub.8 [r0], r1
    jmp loop_end

op_next:
    add.32 [memory_ptr], r1
    jmp loop_end

op_prev:
    sub.32 [memory_ptr], r1
    jmp loop_end

op_print:
    mov r0, memory
    add r0, [memory_ptr]
    mov.8 r0, [r0]
    call printc
    jmp loop_end

op_read:
    call flush
op_read_loop:
    mov r0, 1
    mov r1, [stream_ptr]
    mov r2, input_buf
    call read

    cmp.8 [input_buf], 0
    ifz jmp op_read_loop

    mov r0, [input_buf]
    call printci

    mov r0, memory
    add r0, [memory_ptr]
    mov [r0], [input_buf]
    jmp loop_end

op_loop_f:
    mov r0, memory
    add r0, [memory_ptr]
    cmp.8 [r0], 0
    ifnz jmp loop_end
    mov r1, 1 ; The number of open brackets
op_loop_f2:
    cmp r1, 0
    ifz jmp loop_end

    inc [program_ptr]
    mov r0, [program]
    add r0, [program_ptr]
    cmp.8 [r0], TOK_LOOP_F
    ifz inc r1
    cmp.8 [r0], TOK_LOOP_B
    ifz dec r1
    
    jmp op_loop_f2

op_loop_b:
    mov r0, memory
    add r0, [memory_ptr]

    cmp.8 [r0], 0
    ifz jmp loop_end

    mov r1, 1 ; The number of closing brackets
op_loop_b2:
    cmp r1, 0
    ifz jmp loop_end

    dec [program_ptr]
    mov r0, [program]
    add r0, [program_ptr]
    cmp.8 [r0], TOK_LOOP_F
    ifz dec r1
    cmp.8 [r0], TOK_LOOP_B
    ifz inc r1

    jmp op_loop_b2

loop_end:
    inc [program_ptr]
    jmp loop

wait:
    push r1
    mov r1, 0
wait_loop:
    inc r1
    nop
    cmp r0, r1
    ifnz jmp wait_loop
    pop r1
    ret

exit:
    cmp.8 [temp_char], 10
    ifz jmp exit_real
    mov r0, 10
    call printc
exit_real:
    mov r0, [program]
    call free_memory
    mov r0, [repeats]
    call free_memory
    call end_current_task

yield:
    mov [counter], 0
    call yield_task
    ret

printn:
    call print
    push r0
    mov.8 r0, 10
    call printc
    pop r0
    ret

print:
    push r0
    push r1
    push r2

    mov r2, r0            ; r2: source buffer
    call string_length    ; r0: length
    mov r1, [stream_ptr]  ; r1: stream pointer
    call write

    pop r2
    pop r1
    pop r0
    ret

printc:
    push r0
    push r1
    push r2

    ;; Copy the char to temp_char to print it
    ;; This is probably stupid
    mov.8 [temp_char], r0
    mov r2, temp_char     ; r2: source buffer
    mov r0, 1             ; r0: length
    mov r1, [stream_ptr]  ; r1: stream pointer
    call write

    pop r2
    pop r1
    pop r0
    
    ret

printci: ; Massively slows printing speed but it is drawn immediately
    call printc
    call flush
    ret

flush:
    push r0
    push r1
    push r2

    mov r2, flush_char     ; r2: source buffer
    mov r0, 3             ; r0: length
    mov r1, [stream_ptr]  ; r1: stream pointer
    call write

    pop r2
    pop r1
    pop r0
    
    ret


out_of_mem:
    mov r0, oom
    call print
    call end_current_task


memory: data.fill 0, 30000
memory_ptr: data.32 0

program: data.32 0

program_raw_size: data.32 0
program_size: data.32 0
program_ptr: data.32 0

repeats: data.32 0
;repeats_idx: data.32 0

repeat: data.8 1

program_file_struct: data.fill 0, 8

file_not_found: data.str "File Not Found" data.8 10 data.8 0
oom: data.str "Out Of Memory!" data.8 10 data.8 0

temp_char: data.8 0
flush_char: data.8 0xFE data.8 0xFE data.8 0xFE

input_buf: data.8 0

counter: data.32 0

stream_ptr: data.32 0
arg_0: data.32 0
arg_1: data.32 0
arg_2: data.32 0
arg_3: data.32 0
#include "./fox32rom/fox32rom.def"
#include "./fox32os/fox32os.def"

