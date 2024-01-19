# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: atedesch <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/16 11:00:48 by atedesch          #+#    #+#              #
#    Updated: 2024/01/19 10:58:30 by atedesch         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

library			= libft

prefix			= ft_

mandatory_ft	= isalpha \
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

bonus_ft		= lstnew

SRCS			= $(mandatory_ft:%=$(prefix)%.c)

OBJS			= $(SRCS:.c=.o)

BONUS_SRCS		= $(bonus_ft:%=$(prefix)%.c)

BONUS_OBJS		= $(BONUS_SRCS:.c=.o)

HEADER			= libft.h

CC				= gcc
RM				= rm -f
CFLAGS			= -Wall -Wextra -Werror
INCLUDES		= ./
RN				= ar rcs
LB				= ranlib

OUTN 			= $(library).a

NAME			= $(OUTN)

$(NAME):	$(SRCS) $(HEADER)
	$(CC) $(CFLAGS) -g -c -I$(INCLUDES) $(SRCS)
	$(RN) $(NAME) $(OBJS)
	$(LB) $(NAME)

all:	$(NAME)

clean:
	@/bin/$(RM) $(OBJS) $(BONUS_OBJS)

fclean:	clean
	@/bin/$(RM) $(NAME)

re:	fclean all

bonus:	$(OBJS) $(BONUS_OBJS)
	$(RN) $(NAME) $(OBJS) $(BONUS_OBJS)	

.PHONY:	all clean fclean re bonus