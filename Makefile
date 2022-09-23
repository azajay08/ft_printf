# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ajones <ajones@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/05 10:56:50 by ajones            #+#    #+#              #
#    Updated: 2022/09/15 11:48:31 by ajones           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS := ft_printf.c format_c.c format_s.c format_di.c format_o.c format_x.c \
format_percent.c init_flags.c itoa_dioux.c format_u.c di_helpers.c sorter.c \
format_p.c format_f.c f_helpers.c data_conv.c di_zero_helpers.c

O_LIBFT := $(addprefix libft/, ft_isalpha.o ft_isdigit.o ft_isprint.o \
ft_tolower.o ft_toupper.o ft_isascii.o ft_isalnum.o ft_putchar.o ft_putstr.o \
ft_strlen.o ft_strcmp.o ft_strncmp.o ft_strdup.o ft_strcpy.o ft_strncpy.o \
ft_putendl.o ft_strcat.o ft_strncat.o ft_strlcat.o ft_strchr.o ft_strrchr.o \
ft_putnbr.o ft_strstr.o ft_strnstr.o ft_putchar_fd.o ft_putstr_fd.o \
ft_putendl_fd.o ft_putnbr_fd.o ft_bzero.o ft_strclr.o ft_memset.o \
ft_memcpy.o ft_memccpy.o ft_memmove.o ft_memchr.o ft_memcmp.o ft_atoi.o \
ft_memalloc.o ft_memdel.o ft_strnew.o ft_strdel.o ft_striter.o ft_striteri.o \
ft_strmap.o ft_strmapi.o ft_strequ.o ft_strnequ.o ft_strsub.o ft_strjoin.o \
ft_strtrim.o ft_strsplit.o ft_itoa.o ft_lstadd.o ft_lstdel.o ft_lstdelone.o \
ft_lstiter.o ft_lstmap.o ft_lstnew.o ft_lstadd_toend.o ft_lstcount.o \
ft_lstfree.o ft_lstlast.o ft_abs.o ft_intlen.o ft_isspace.o ft_2d_free.o \
ft_strjoin_free1.o ft_strjoin_free2.o ft_power.o ft_power_double.o ft_round.o \
ft_is_neg.o get_next_line.o)

O_PRINTF := $(SRCS:.c=.o)

NAME := libftprintf.a
FLAGS := -c -Wall -Werror -Wextra
INCL := -I ./includes
LIBFT := libft/
LIB_A := libft/libft.a
SRC_PATH := srcs/
P_SRCS := $(addprefix $(SRC_PATH), $(SRCS))
GREEN := '\033[1;3;32m'
CYAN := '\033[2;3;36m'
RED := '\033[2;3;31m'
RESET := \033[0m

all: $(NAME)

$(NAME):
	@echo ${CYAN}"Compiling libft and ft_printf...\n${RESET}"
	@make -C libft
	@gcc $(FLAGS) $(INCL) $(P_SRCS)
	@ar rc $(NAME) $(O_PRINTF) $(O_LIBFT)
	@echo ${GREEN}"Compiled successfully${RESET}\n"

clean:
	@echo ${RED}"Removing libft & ft_printf .o files...${RESET}"
	@rm -f $(O_PRINTF)
	@make -C libft clean

fclean: clean
	@echo ${RED}"Removing libft.a & libftprintf.a...${RESET}"
	@rm -f $(NAME)
	@make -C libft fclean
	
re: fclean all
