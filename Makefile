NAME = libft.a

SRC = ./srcs/ft_isalpha.s ./srcs/ft_isdigit.s ./srcs/ft_isalnum.s ./srcs/ft_isprint.s ./srcs/ft_isascii.s ./srcs/ft_tolower.s ./srcs/ft_toupper.s ./srcs/ft_bzero.s ./srcs/ft_strlen.s ./srcs/ft_puts.s ./srcs/ft_strcat.s ./srcs/ft_memset.s ./srcs/ft_memcpy.s ./srcs/ft_strdup.s ./srcs/ft_cat.s ./srcs/ft_putstr_fd.s ./srcs/ft_memalloc.s ./srcs/ft_strnew.s ./srcs/ft_isblank.s ./srcs/ft_putstr.s ./srcs/ft_strcpy.s ./srcs/ft_squar.s ./srcs/ft_abs.s ./srcs/ft_strclr.s

OBJ = $(SRC:.s=.o)


all: $(NAME)

%.o : %.s
	nasm -f macho64 -g  $^

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

	#make ; gcc -c main.c; gcc main.o -L . -lft