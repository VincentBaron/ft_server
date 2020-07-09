# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vbaron <vbaron@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/03 00:12:04 by vbaron            #+#    #+#              #
#    Updated: 2020/07/09 16:12:57 by vbaron           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

MAINTAINER Vbaron <vbaron@student.42.fr>

RUN apt-get update

RUN apt-get -y install wget

RUN apt-get -y install nginx

ADD srcs/* /usr/bin/

RUN chmod 755 /usr/bin/*

RUN /usr/bin/installation.sh

RUN rm config.sample.inc.php

#RUN /var/lib/phpmyadmin/tmp/config.sh

EXPOSE 80

CMD ["script.sh"]
