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
    test rax, rax
    jz _err
    mov rsi, r12
    mov rdi, rax
    call _ft_strcpy

_err_done:
    pop rbp
    ret

_err:
    mov rax, 0
    jmp _err_done