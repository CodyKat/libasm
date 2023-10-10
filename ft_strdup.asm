section .text
        global  _ft_strdup
        extern  ___error
        extern  _ft_strcpy
        extern  _ft_strlen
        extern  _malloc

    ; strdup(const char *s1) -> char *
_ft_strdup:
    push rdi
    call _ft_strlen
    mov rdi, rax
    call _malloc
    jc _err
    pop rsi
    mov rdi, rax
    call _ft_strcpy
    ret

_err:
    push rax
    call ___error
    pop rdx
    mov [rax], rdx
    mov al, byte 0
    movsx rax, al
    ret