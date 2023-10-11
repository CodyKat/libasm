section .text
        global  _ft_read
        extern  ___error

    ; ft_read(int fd, void *buf, size_t nbyte) -> ssize_t
_ft_read:
    mov rax, 0x02000003
    syscall
    jc _err
    ret

_err:
    mov rdx, rax
    call ___error
    mov [rax], rdx
    mov rax, -1
    ret