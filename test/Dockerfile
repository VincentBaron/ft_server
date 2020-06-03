# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vbaron <vbaron@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/03 00:12:04 by vbaron            #+#    #+#              #
#    Updated: 2020/06/04 01:30:21 by vbaron           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

#Basic configs

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y wget


#Nginx, Phpmyadmin, mySQL installation

RUN apt-get -y install nginx
RUN apt-get -y install php php-common
RUN apt-get -y install php-cli php-fpm php-mysql
CMD apt-get -y install mariadb-server

#Downloads the graphic interface of Phpmyadmin

RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.5/phpMyAdmin-4.9.5-english.tar.gz

EXPOSE 80