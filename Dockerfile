# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vbaron <vbaron@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/03 00:12:04 by vbaron            #+#    #+#              #
#    Updated: 2020/07/14 19:25:09 by vbaron           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

MAINTAINER Vbaron <vbaron@student.42.fr>

#RUN apt-get update

#RUN apt-get -y install wget

#RUN apt-get -y install nginx

ADD srcs/* /usr/bin/

RUN chmod 755 /usr/bin/*

#RUN /usr/bin/installation.sh

#RUN /usr/bin/config.sh

#Installing phpMyAdmin

#RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
#RUN tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
#RUN mv phpMyAdmin-4.9.0.1-all-languages /usr/share/phpMyAdmin

EXPOSE 80

CMD ["script.sh"]

#HELP

#https://www.linuxbabe.com/debian/install-lemp-stack-debian-10-buster
