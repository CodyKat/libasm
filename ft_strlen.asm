section .text
        global      _ft_strlen
    ; ft_strlen
_ft_strlen:
    ; ft_strlen(const char *str) -> size_t
    ; 
    ; int loop_count = 0;
    mov rax, 0
_loop_start:
    ; while (str[loop_count] != '\0')
    ;    loop_count++;
    cmp byte [rdi + rax], 0
    je _loop_end
    inc rax
    jmp _loop_start
_loop_end:
    ret