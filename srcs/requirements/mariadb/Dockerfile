FROM debian:bullseye

RUN apt-get update && apt-get -y upgrade && apt-get -y install mariadb-server

COPY ./tools/mdb-conf.sh /mdb-conf.sh

RUN chmod +x /mdb-conf.sh

ENTRYPOINT [ "./mdb-conf.sh" ]
