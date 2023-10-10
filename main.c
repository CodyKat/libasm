#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
size_t ft_strlen(const char *str);
char *ft_strcpy(char *dst, const char *srs);
int ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fd, const void *buf, size_t nbyte);
char *ft_strdup(const char *s1);

int main() {
    char *str = "Hello World";
    char *dst = malloc(sizeof(char) * ft_strlen(str) + 1);

    printf("ft_strlen: %zu\n", ft_strlen(str));
    printf("ft_strcpy: %s\n", ft_strcpy(dst, str));
    printf("ft_strcmp expect 0 : %d\n", ft_strcmp(str, dst));
    dst[10] = 'c';
    printf("ft_strcmp expect 1 : %d\n", ft_strcmp(str, dst));
    printf("ft_write: %zd\n", ft_write(1, str, 13));
    dst = ft_strdup(str);
    printf("ft_strdup: %s\n", dst);

    free(dst);

    printf("\n\n");
    printf("strlen: %zu\n", strlen(str));
    printf("strcpy: %s\n", strcpy(dst, str));
    printf("strcmp expect 0 : %d\n", strcmp(str, dst));
    dst[10] = 'c';
    printf("strcmp expect 1 : %d\n", strcmp(str, dst));
    printf("write: %zd\n", write(1, str, 13));
    dst = strdup(str);
    printf("strdup: %s\n", dst);

    free(dst);
    return 0;
}