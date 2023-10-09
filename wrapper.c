#include <stdio.h>
#include <stdlib.h>
#include <string.h>
size_t ft_strlen(const char *str);
char *ft_strcpy(char *dst, const char *srs);
int ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fd, const void *buf, size_t nbyte);
char *ft_strdup(const char *s1);

void hello() {
    const char *str = "hella";
    char *str2 = ft_strdup(str);
    printf("%s", str2);
}

int main() {
    hello();
    system("leaks ft_strcmp");
    return 0;
}