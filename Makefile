# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mogawa <masaruo@gmail.com>                 +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/21 14:53:44 by mogawa            #+#    #+#              #
#    Updated: 2024/10/22 15:20:41 by mogawa           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: up

up: build
	docker-compose -f ./srcs/docker-compose.yml up -d

down:
	docker-compose -f ./srcs/docker-compose.yml down

build:
	docker-compose -f ./srcs/docker-compose.yml build

clean:
	docker-compose -f ./srcs/docker-compose.yml down

fclean:
	docker-compose -f ./srcs/docker-compose.yml down --volumes --rmi all

re: clean up

test:
	curl -k https://mogawa.42.fr

.PHONY: up down build clean re test
