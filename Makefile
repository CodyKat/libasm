NAME := libasm.a
FILES := ft_strlen ft_strcpy ft_strcmp ft_write ft_read ft_strdup
SRCS := $(addsuffix .s, $(FILES))
OBJS := $(addsuffix .o, $(FILES))

all: $(NAME)

$(NAME): $(OBJS)
	ar r $(NAME) $(OBJS)

%.o: %.s
	nasm -f macho64 $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re:
	make fclean
	make all
