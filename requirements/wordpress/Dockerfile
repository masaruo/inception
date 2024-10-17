FROM debian:bullseye

RUN apt-get update && apt-get -y upgrade && apt-get install -y php-fpm

CMD [ "php-fpm8.2", "-F" ]
