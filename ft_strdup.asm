section .text
        global  _ft_strdup
        extern  ___error
        extern  _ft_strcpy
        extern  _ft_strlen
        extern  _malloc

; strdup(const char *s1)
_ft_strdup:
    push rax
    call _ft_strlen
    mov rdi, rax
    ; mov rax, 0x02000000
    ; syscall
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