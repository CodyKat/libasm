section .text
        global  _ft_write
        extern  ___error

    ; ft_write(int fd, const void *buf, size_t nbyte) -> ssize_t
_ft_write:
    push rbp
    mov rbp, rsp
    mov rax, 0x02000004
    syscall
    jc _err

_err_done:
    pop rbp
    ret

_err:
    mov rdx, rax
    call ___error
    mov [rax], rdx
    mov rax, -1
    jmp _err_done