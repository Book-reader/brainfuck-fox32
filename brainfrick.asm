;;
pop [stream_ptr]
pop [arg_0]
pop [arg_1]
pop [arg_2]
pop [arg_3]

;mov r0, running
;call printn
;mov r0, program
;call printn

loop:
    ; This prevents the system from being locked while the program runs but massivley drops performance
    ; call yield_task

    mov r0, program
    add r0, [program_ptr]
    cmp.8 [r0], 0
    ifz jmp exit

    cmp.8 [r0], '+'
    ifz jmp op_add
    cmp.8 [r0], '-'
    ifz jmp op_sub
    cmp.8 [r0], '>'
    ifz jmp op_next
    cmp.8 [r0], '<'
    ifz jmp op_prev
    cmp.8 [r0], '.'
    ifz jmp op_print
    cmp.8 [r0], ','
    ifz jmp op_read
    cmp.8 [r0], '['
    ifz jmp op_loop_f
    cmp.8 [r0], ']'
    ifz jmp op_loop_b

    ;mov.8 r0, [r0]
    ;call printc
    jmp loop_end

op_add:
    mov.32 r0, memory
    add.32 r0, [memory_ptr]
    inc.8 [r0]
    jmp loop_end

op_sub:
    mov r0, memory
    add r0, [memory_ptr]
    dec.8 [r0]
    jmp loop_end

op_next:
    inc.32 [memory_ptr]
    jmp loop_end

op_prev:
    dec.32 [memory_ptr]
    jmp loop_end

op_print:
    mov r0, memory
    add r0, [memory_ptr]
    mov.8 r0, [r0]
    call printc
    jmp loop_end

op_read:
op_read_loop:
    mov r0, 1
    mov r1, [stream_ptr]
    mov r2, input_buf
    call read

    cmp.8 [input_buf], 0
    ifz jmp op_read_loop

    mov r0, [input_buf]
    call printc

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
;;;;;
    ;mov r0, running
    ;call printn
;;;;;
    inc [program_ptr]
    mov r0, program
    add r0, [program_ptr]
    cmp.8 [r0], '['
    ifz inc r1
    cmp.8 [r0], ']'
    ifz dec r1
    
    jmp op_loop_f2

op_loop_b:
    mov r0, memory
    add r0, [memory_ptr]

    cmp.8 [r0], 0
    ifz jmp loop_end

    mov r1, 1 ; The number of closed brackets
op_loop_b2:
    cmp r1, 0
    ifz jmp loop_end

    dec [program_ptr]
    mov r0, program
    add r0, [program_ptr]
    cmp.8 [r0], '['
    ifz dec r1
    cmp.8 [r0], ']'
    ifz inc r1

    jmp op_loop_b2

loop_end:
    ; mov r0, program
    ; add r0, [program_ptr]
    ; mov r0, [r0]
    ; call printc

    
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
    call end_current_task

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

memory: data.fill 0, 30000
memory_ptr: data.32 0
; strz is automatically null terminated, str is not
program: data.strz "
#include "LostKingdom.b"
"
program_ptr: data.32 0

temp_char: data.8 0

input_buf: data.8 0

stream_ptr: data.32 0
arg_0: data.32 0
arg_1: data.32 0
arg_2: data.32 0
arg_3: data.32 0
#include "./fox32rom/fox32rom.def"
#include "./fox32os/fox32os.def"

