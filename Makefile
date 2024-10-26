# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mogawa <masaruo@gmail.com>                 +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/21 14:53:44 by mogawa            #+#    #+#              #
#    Updated: 2024/10/26 10:54:42 by mogawa           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# UTM上の仮装環境で開く必要あり

include srcs/.env

all: prepare build up

prepare:
	@sudo mkdir -p $(LOCAL_DATA_PATH)/mariadb
	@sudo mkdir -p $(LOCAL_DATA_PATH)/wordpress
	@sudo chmod 755 $(LOCAL_DATA_PATH)/mariadb
	@sudo chmod 755 $(LOCAL_DATA_PATH)/wordpress

up:
	docker-compose -f ./srcs/docker-compose.yml up -d

down:
	docker-compose -f ./srcs/docker-compose.yml down

build:
	docker-compose -f ./srcs/docker-compose.yml build

clean:
	docker-compose -f ./srcs/docker-compose.yml down --volumes
	sudo rm -rf $(LOCAL_DATA_PATH)

fclean:
	docker-compose -f ./srcs/docker-compose.yml down --volumes --rmi all
	sudo rm -rf $(LOCAL_DATA_PATH)

log:
	docker-compose -f ./srcs/docker-compose.yml logs

re: clean all

test:
	curl -k https://mogawa.42.fr

debian:
	docker container run --rm -it debian:inception bash

.PHONY: all prepare up down build clean fclean log re test
