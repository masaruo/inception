# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mogawa <masaruo@gmail.com>                 +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/21 14:53:44 by mogawa            #+#    #+#              #
#    Updated: 2024/10/23 10:34:47 by mogawa           ###   ########.fr        #
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
	docker-compose -f ./srcs/docker-compose.yml down --volumes

fclean:
	docker-compose -f ./srcs/docker-compose.yml down --volumes --rmi all

log:
	docker-compose -f ./srcs/docker-compose.yml logs

re: clean up

test:
	curl -k https://mogawa.42.fr

debian:
	docker container run --rm -it debian:inception bash

.PHONY: up down build clean re test
