# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vbaron <vbaron@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/03 00:12:04 by vbaron            #+#    #+#              #
#    Updated: 2020/07/17 16:04:36 by vbaron           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

MAINTAINER Vbaron <vbaron@student.42.fr>

#Copying config files to container

ADD srcs/* /usr/bin/
RUN chmod 755 /usr/bin/*

#Basics
RUN apt-get update
RUN apt-get upgrade
RUN apt-get -y install wget
RUN apt-get -y install nano

#Installing LEMP stack
RUN apt-get -y install nginx
RUN apt-get -y install mariadb-server mariadb-client
RUN apt-get -y install php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline php7.3-mbstring
RUN rm /etc/nginx/sites-enabled/default
RUN cp /usr/bin/default.conf /etc/nginx/conf.d/
RUN cp /usr/bin/info.php /var/www/html

#Installing phpMyAdmin
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN mv phpMyAdmin-4.9.0.1-all-languages /var/www/html/phpmyadmin
RUN rm /var/www/html/phpmyadmin/config.sample.inc.php
RUN cp /usr/bin/config.inc.php /var/www/html/phpmyadmin
RUN mkdir /var/www/html/phpmyadmin/tmp
RUN chown -R www-data:www-data /var/www/html

#Installing Wordpress
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN mv wordpress /var/www/html


EXPOSE 80

CMD ["script.sh"]

#HELP

#https://www.linuxbabe.com/debian/install-lemp-stack-debian-10-buster
