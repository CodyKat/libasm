section .text
        global  _ft_read
        extern  ___error

    ; ft_read(int fd, void *buf, size_t nbyte)
_ft_read:
    mov rax, 0x02000003
    syscall
    test rax, rax
    js _err
    ret

_err:
    push rax
    call ___error
    pop rdx
    neg rdx
    mov [rax], rdx
    mov rax, -1
    ret