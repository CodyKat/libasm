#include <stdio.h>
#include <stdlib.h>
#include <string.h>
size_t ft_strlen(const char *str);
char *ft_strcpy(char *dst, const char *srs);
int ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fd, const void *buf, size_t nbyte);
char *ft_strdup(const char *s1);

int main() {
    char *str = "Hello World!";
    printf("ft_strlen: %zu\n", ft_strlen(str));
    char *dst = malloc(sizeof(char) * 13);
    printf("ft_strcpy: %s\n", ft_strcpy(dst, str));
    printf("ft_strcmp: %d\n", ft_strcmp(str, "Hello World!"));
    printf("ft_write: %zd\n", ft_write(1, str, 13));
    printf("ft_strdup: %s\n", ft_strdup(str));
    return 0;
}