FROM ubuntu:18.04

MAINTAINER Thays donatti <thays@okn.com.br>

RUN apt-get update && apt-get install -y nginx php7.2-fpm curl
RUN apt-get -y install php7.2-fpm
RUN apt-get -y install php7.2-mbstring php7.2-xml php7.2-curl php7.2-mysql

RUN service nginx restart

EXPOSE 80 443

WORKDIR /var/www/html

CMD ["/bin/bash"];
