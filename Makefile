# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: grmullin <grmullin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/29 11:14:12 by grmullin          #+#    #+#              #
#    Updated: 2025/04/29 16:46:31 by grmullin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := libft.a
FILES := ft_isalpha.c ft_toupper.c ft_isdigit.c ft_tolower.c ft_isalnum.c ft_isascii.c ft_strchr.c  ft_isprint.c ft_strrchr.c ft_strlen.c ft_strncmp.c ft_memset.c ft_bzero.c ft_memchr.c ft_memcpy.c  ft_memcmp.c ft_memmove.c ft_strnstr.c ft_strlcpy.c ft_strlcat.c ft_atoi.c ft_calloc.c ft_strdup.c  ft_substr.c ft_striteri.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c
BONUS := ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstiter.c ft_lstclear.c
OBJS := $(FILES:.c=.o)
OBJSB := $(BONUS:.c=.o)
CC := cc
CFLAGS := -Wall -Werror -Wextra
AR := ar
ARFLAGS := -r -c -s
RM := rm -f

all: $(NAME)
	
$(NAME): $(OBJS) $(OBJSB)
	$(AR) $(ARFLAGS) $(NAME) $(OBJS) $(OBJSB)

clean:
	$(RM) $(OBJS) $(OBJSB)

fclean: clean
	$(RM) $(NAME)

bonus: $(OBJSB)
	$(AR) $(ARFLAGS) $(NAME) $(OBJSB)

re: fclean all

.PHONY: all clean fclean re bonus
