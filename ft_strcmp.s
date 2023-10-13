section .text
        global  _ft_strcmp
    ; ft_strcmp(const char *s1, const char *s2) -> ssize_t
_ft_strcmp:
    push rbp
    xor r10, r10
_loop:
    mov rbp, rsp
    mov al, byte [rdi + r10]
    mov cl, byte [rsi + r10]
    cmp al, cl
    jne _diff_char
    test al, al
    jz _loop_end
    inc r10
    jmp _loop

_diff_char:
    sub al, cl
    movsx rax, al
    pop rbp
    ret
_loop_end:
    mov rax, 0
    pop rbp
    ret