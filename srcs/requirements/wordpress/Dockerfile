FROM debian:buster

#insall Wordpress
RUN apt-get update
RUN apt-get install -y zip
RUN apt-get install -y unzip
RUN apt-get install -y curl

#install php and php-fpm
RUN apt install -y php php-common php-mysql
RUN apt install -y php-fpm
RUN mkdir -p /run/php/
RUN mkdir -p /var/run

#Download wordpress files
RUN apt-get install curl mariadb-client -y
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/bin/wp

COPY ./wp-sh.sh /wp-sh.sh

#copy php-fpm config file
COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf
CMD ["bash", "wp-sh.sh"]