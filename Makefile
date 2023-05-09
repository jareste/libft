# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jareste- <jareste-@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/04 12:08:30 by jareste-          #+#    #+#              #
#    Updated: 2023/05/09 15:57:42 by jareste-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

HEADER	=	libft.h

NAME	=	libft.a

SRCS	=	ft_atoi.c \
			ft_isdigit.c \
			ft_isalpha.c \
			ft_isalnum.c \
			ft_isascii.c \
			ft_isprint.c \
			ft_strlen.c \
			ft_memset.c \
			ft_bzero.c \
			ft_memcpy.c	\
			ft_memmove.c \
			ft_strlcpy.c \
			ft_strlcat.c \
			ft_toupper.c \
			ft_tolower.c \
			ft_memchr.c \
			ft_strchr.c \
			ft_strrchr.c \
			ft_strncmp.c \
			ft_memcmp.c \
			ft_strnstr.c \
			ft_calloc.c \
			ft_strdup.c \
			ft_substr.c \
			ft_strjoin.c \
			ft_strtrim.c \
			ft_split.c \
			ft_itoa.c \
			ft_strmapi.c \
			ft_striteri.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c 

OBJS	= 	$(SRCS:.c=.o)
DEP		=	$(addsuffix .d, $(basename $(OBJS)))

CC	= 	gcc

RM	= 	rm -f

LIBC	= 	ar -rcs

FLAGS	= 	-Wall -Wextra -Werror

$(OBJ)%.o:%.c Makefile
	$(CC) $(FLAGS) -MMD -I ./ -c $< -o $@

$(NAME):: ${OBJS} ${HEADER}
	$(LIBC) $(NAME) $(OBJS)

-include $(DEP)

all: $(NAME)

fclean: clean
	$(RM) $(NAME)

clean:
	$(RM) $(OBJS) $(DEP)

re: fclean all

.PHONY: all clean fclean re .c.o
