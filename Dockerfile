# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vbaron <vbaron@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/03 00:12:04 by vbaron            #+#    #+#              #
#    Updated: 2020/06/03 00:53:43 by vbaron           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN sudo apt update \
    && sudo apt install nginx \
    && sudo ufw allow 'Nginx HTTP' \

#ADD . /app/
#WORKDIR /app

EXPOSE 2368