# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: madan <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/07 21:10:56 by madan             #+#    #+#              #
#    Updated: 2019/09/16 19:57:08 by madan            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAGS = -Wall -Wextra -Werror -I. -c
SRCS = ft_atoi.c\
	   ft_isupper.c\
	   ft_memchr.c\
	   ft_putnbr.c\
	   ft_strdup.c\
	   ft_strncmp.c\
	   ft_strtrim.c\
	   ft_bzero.c\
	   ft_itoa.c\
	   ft_memcmp.c\
	   ft_putnbr_fd.c\
	   ft_strequ.c\
	   ft_strncpy.c\
	   ft_tolower.c\
	   ft_isalnum.c\
	   ft_lstadd.c\
	   ft_memcpy.c\
	   ft_putstr.c\
	   ft_striter.c\
	   ft_strnequ.c\
	   ft_toupper.c\
	   ft_isalpha.c\
	   ft_lstdel.c\
	   ft_memdel.c\
	   ft_putstr_fd.c\
	   ft_striteri.c\
	   ft_strnew.c\
	   ft_isascii.c\
	   ft_lstdelone.c\
	   ft_memmove.c\
	   ft_strcat.c\
	   ft_strjoin.c\
	   ft_strnlen.c\
	   ft_ischar.c\
	   ft_lstiter.c\
	   ft_memset.c\
	   ft_strchr.c\
	   ft_strlcat.c\
	   ft_strnstr.c\
	   ft_isdigit.c\
	   ft_lstmap.c\
	   ft_putchar.c\
	   ft_strclr.c\
	   ft_strlen.c\
	   ft_strrchr.c\
	   ft_islower.c\
	   ft_lstnew.c\
	   ft_putchar_fd.c\
	   ft_strcmp.c\
	   ft_strmap.c\
	   ft_strsplit.c\
	   ft_isprint.c\
	   ft_memalloc.c\
	   ft_putendl.c\
	   ft_strcpy.c\
	   ft_strmapi.c\
	   ft_strstr.c\
	   ft_isspace.c\
	   ft_memccpy.c\
	   ft_putendl_fd.c\
	   ft_strdel.c\
	   ft_strncat.c\
	   ft_strsub.c\

OUT = $(SRCS:%.c=%.o)

all: $(NAME)

$(NAME): $(OUT) libft.h
	@ar rc $(NAME) $(OUT)

%.o:%.c
	@gcc $(FLAGS) $< -o $@

clean:
	@rm -f $(OUT)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: clean fclean all re
