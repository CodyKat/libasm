#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <fcntl.h>
size_t ft_strlen(const char *str);
char *ft_strcpy(char *dst, const char *srs);
int ft_strcmp(const char *s1, const char *s2);
char *ft_strdup(const char *s1);
ssize_t ft_write(int fd, const void *buf, size_t nbyte);
ssize_t ft_read(int fd, void *buf, size_t nbyte);

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

    printf("\n======================================\n\n");

    printf("ft_strlen empty string : %zu\n", ft_strlen(""));
    char str2[42];
    ft_strcpy(str2, "");
    printf("ft_strcpy empty string : %s\n", str2);
    char *str3 = ft_strdup("");
    printf("ft_strdup empty string: %s\n", str3);
    printf("ft_strcmp empty string: %d\n", ft_strcmp("", ""));
    
    if (ft_write(-1, "1", 1) == -1) {
        printf("ft_write failed, errno : %d\n\n", errno);
    }
    memset(str2, 0, 42);
    if (ft_read(0, str2, 42) == -1) {
        printf("ft_read failed, errno : %d\n\n", errno);
    }
    memset(str2, 0, 42);
    if (ft_read(-1, str2, 42) == -1) {
        printf("ft_read failed, errno : %d\n\n", errno);
    }
    free(str3);



    // char str1[1000];
    // int fd = open("infile.txt", O_RDONLY);
    // int out_fd1 = open("ft_outfile.txt", O_WRONLY | O_CREAT, 0644);
    // int out_fd2 = open("outfile.txt", O_WRONLY | O_CREAT, 0644);
    // read(fd, str1, 1000);
    // write(out_fd2, str1, 100);

    // close(fd);
    // fd = open("infile.txt", O_RDONLY);

    // // printf("before ft_read\n");
    // ft_read(fd, str1, 1000);
    // // printf("after ft_read\n");


    // printf("before ft_write\n");
    // ft_write(out_fd1, str1, 100);
    // printf("after ft_write\n");
    // return 0;
}