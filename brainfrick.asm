;;
pop [stream_ptr]
pop [arg_0]
pop [arg_1]
pop [arg_2]
pop [arg_3]

;mov r0, [arg_0]
;cmp r0, 0
;ifz mov r0, program

 ; bf:
 ;    mov r0, program
 ;    call print

loop:
    mov r0, program
    add r0, [program_ptr]
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
;;    cmp.8 [r0], ','
;;    ifz jmp op_add

    cmp.8 [r0], 0
    ifz jmp exit

    ;;mov.8 r0, [r0]
    ;;call printc
    jmp loop_end

op_add:
    mov r0, memory
    add r0, [memory_ptr]
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

loop_end:
    ;;mov r0, error_msg
    ;;call print
    inc.32 [program_ptr]
    jmp loop

exit:
    cmp.8 [temp_char], 10
    ifz jmp exit_true
    mov r0, 10
    call printc
exit_true:
    call end_current_task

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

memory: data.fill 30000,0
memory_ptr: data.32 0
; strz is automatically null terminated, str is not
;;program: data.strz "++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>."
program: data.strz "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++."

error_msg: data.str "error" data.8 0

temp_char: data.8 0
program_ptr: data.32 0
stream_ptr: data.32 0
arg_0: data.32 0
arg_1: data.32 0
arg_2: data.32 0
arg_3: data.32 0
#include "./fox32rom/fox32rom.def"
#include "./fox32os/fox32os.def"

