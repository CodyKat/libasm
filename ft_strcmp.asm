section .text
        global  _ft_strcmp
_ft_strcmp:
    mov r10, 0
_loop:
    mov al, [rdi + r10]
    mov cl, [rsi + r10]
    cmp al, cl
    jne _diff_char
    test al, al
    jz _loop_end
    inc r10
    jmp _loop

_diff_char:
    sub al, cl
    movzx rax, al
    ret
_loop_end:
    mov rax, 0
    ret