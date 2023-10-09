section .text
    global  _ft_strcpy
_ft_strcpy:
    ; ft_strcpy(dst, src)
    mov r10, 0
_loop:
    mov al, [rsi + r10]
    cmp al, 0
    je _loop_end
    mov [rdi + r10],al 
    inc r10
    jmp _loop
_loop_end:
    mov [rdi + r10], byte 0
    mov rax, rdi
    ret