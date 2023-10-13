section .text
    global  _ft_strcpy
    ; ft_strcpy(char *dst, const char *src) -> char *
_ft_strcpy:
    push rbp
    mov rbp, rsp
    xor r10, r10
_loop:
    mov al, byte [rsi + r10]
    test al, al
    jz _loop_end
    mov byte [rdi + r10], al 
    inc r10
    jmp _loop
_loop_end:
    mov byte [rdi + r10], byte 0
    mov rax, rdi
    pop rbp
    ret