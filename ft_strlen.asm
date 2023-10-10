section .text
        global      _ft_strlen
    ; ft_strlen(const char *str) -> size_t
_ft_strlen:
    ; 
    ; int loop_count = 0;
    mov rax, 0
_loop:
    ; while (str[loop_count] != '\0')
    ;    loop_count++;
    cmp byte [rdi + rax], 0
    je _loop_end
    inc rax
    jmp _loop
_loop_end:
    ret