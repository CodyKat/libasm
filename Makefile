NAME := libasm.a
FILES := ft_strlen ft_strcpy ft_strcmp ft_write ft_read ft_strdup
SRCS := $(addsuffix .asm, $(FILES))
OBJS := $(addsuffix .o, $(FILES))

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

%.o: %.asm
	nasm -f macho64 $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re:
	make fclean
	make all
