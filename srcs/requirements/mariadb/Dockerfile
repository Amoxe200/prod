FROM debian:buster

#install mariadb
RUN apt-get update
RUN apt-get install -y mariadb-server

# set MariaDB data dir and log dir
RUN mkdir -p /var/lib/mysql && mkdir -p /var/log/mysql && chown mysql:mysql /var/log/mysql


COPY ./script.sh /script.sh
COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN  sh script.sh

CMD ["mysqld_safe"]