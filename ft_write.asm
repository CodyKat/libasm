section .text
        global  _ft_write
        extern  ___error

    ; ft_write(int fd, const void *buf, size_t nbyte)
_ft_write:
    mov rax, 0x02000004
    syscall
    jc _err
    ret

_err:
    push rax
    call ___error
    pop rdx
    mov [rax], rdx
    mov rax, -1
    ret