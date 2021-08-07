# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eparisot <eparisot@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/05 23:09:54 by eparisot          #+#    #+#              #
#    Updated: 2020/08/05 23:09:56 by eparisot         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	ft_ssl

SRCS	=	srcs/main.c \
			srcs/ssl_io.c \
			srcs/tools.c \
			srcs/padding.c \
			srcs/ft_ssl.c \
			srcs/md5.c \
			srcs/md5_fcts.c \
			srcs/md5_fcts_2.c \
			srcs/sha224.c \
			srcs/sha256.c \
			srcs/sha256_fcts.c \
			srcs/sha256_fcts_2.c \
			srcs/base64.c \
			srcs/des_ecb.c \
			srcs/des_cbc.c \

INC		=	includes/ft_ssl_md5.h

OBJS	=	$(SRCS:.c=.o)

LIBS	=	libft/libft.a \

CFLAGS	=	-Wall -Wextra -Werror

RM		=	rm -f

all		:	$(LIBS) $(NAME)

$(NAME)	:	$(OBJS) $(INC)
	gcc $(CFLAGS) $(OBJS) $(LIBS) -o $(NAME)

$(LIBS)	: .FORCE
	@$(MAKE) -C libft

.FORCE	:

clean	:
	$(RM) $(OBJS) && $(MAKE) clean -C libft

fclean	:	clean
	$(RM) $(NAME) libft/libft.a

re		:	fclean all

.PHONY : all re clean fclean
