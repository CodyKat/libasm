#include <stdio.h>
#include <stdlib.h>
#include <string.h>
size_t ft_strlen(const char *str);
char *ft_strcpy(char *dst, const char *srs);
int ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fd, const void *buf, size_t nbyte);

int main() {
    const char *str = "hella";
    char *str2 = "hellb";
    // ft_strcpy(str2, str);
    printf("diff of two string : %d\n", ft_strcmp(str, str2));
    // printf("%s", str2);
    ft_write(1, "a", 1);
    return 0;
}