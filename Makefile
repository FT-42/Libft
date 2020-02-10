.SUFFIXES:
.PHONY: all clean fclean re

NAME = libft.a
CFLAGS = -Wall -Werror -Wextra

SRC_DIR = ./src
INC_DIR = ./inc
OBJ_DIR = ./obj

SRC_FIL = ft_putchar.c \
		  ft_putstr.c \
		  ft_strlen.c \
		  ft_strcpy.c

SRC = $(patsubst %.c, $(SRC_DIR)/%.c, $(SRC_FIL))
OBJ_FIL = $(SRC_FIL:.c=.o)
OBJ = $(patsubst %.o, $(OBJ_DIR)/%.o, $(OBJ_FIL))

all : $(NAME)

$(NAME) : $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@gcc -c $^ -I$(INC_DIR) -o $@

clean :
	@/bin/rm -f $(OBJ)

fclean : clean
	@/bin/rm -f $(NAME)

re : fclean all

exp :
	@gcc main.c libft.a -o Test
