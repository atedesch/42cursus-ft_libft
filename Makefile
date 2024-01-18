# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: atedesch <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/16 11:00:48 by atedesch          #+#    #+#              #
#    Updated: 2024/01/19 00:43:28 by atedesch         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

library			= libft

prefix			= ft_

mandatory		= isalpha \
					isdigit \
					isalnum \
					isascii \
					isprint \
					strlen \
					memset \
					bzero \
					memcpy \
					memmove \
					strlcpy \
					strlcat \
					toupper \
					tolower \
					strchr \
					strrchr \
					strncmp \
					memchr \
					memcmp \
					strnstr \
					atoi \
					calloc \
					strdup \
					substr \
					strjoin \
					strtrim \
					split \
					itoa \
					strmapi \
					striteri \
					putchar_fd \
					putstr_fd \
					putendl_fd \
					putnbr_fd

SRCS			= $(mandatory:%=$(prefix)%.c)

OBJS			= $(SRCS:.c=.o)

HEADER			= libft.h

CC				= gcc
RM				= rm -f
CFLAGS			= -Wall -Wextra -Werror
INCLUDES		= ./

OUTN 			= $(library).a

NAME			= $(OUTN)

$(NAME): $(SRCS) $(HEADER)
	$(CC) $(CFLAGS) -I$(INCLUDES) -c $(SRCS)
	@ar rcs $(NAME) $(OBJS)
	@ranlib $(NAME)

all: 	$(NAME)

clean:
		@/bin/$(RM) $(OBJS)

fclean: clean
		@/bin/$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re