section .text
        global  _ft_strdup
        extern  _ft_strcpy
        extern  _ft_strlen
        extern  _malloc

    ; strdup(const char *s1) -> char *
_ft_strdup:
    push rbp
    mov rbp, rsp
    mov r12, rdi
    call _ft_strlen
    mov rdi, rax
    call _malloc
    jc _err
    mov rsi, r12
    mov rdi, rax
    call _ft_strcpy

_err_done:
    pop rbp
    ret

_err:
    mov rdx, rax
    call ___error
    mov [rax], rdx
    mov al, byte 0
    movsx rax, al
    jmp _err_done