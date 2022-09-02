FROM debian:buster

#install ngnix
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y -f nginx
RUN apt-get install vim curl -y

#Copy config file
COPY default /etc/nginx/sites-available/default

COPY ssl_certificat.key /cert/ssl_certificat.key
COPY ssl_certificat.crt /cert/ssl_certificat.crt

#Run the ngnix server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]