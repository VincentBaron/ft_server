# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vbaron <vbaron@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/03 00:12:04 by vbaron            #+#    #+#              #
#    Updated: 2020/07/07 16:40:07 by vbaron           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

MAINTAINER Vbaron <vbaron@student.42.fr>

RUN apt-get update

RUN apt-get -y install wget

RUN apt-get -y install nginx

ADD script.sh /usr/bin/script.sh

RUN chmod 755 /usr/bin/script.sh

EXPOSE 80

ENTRYPOINT ["script.sh"]

CMD ["bash"]

VOLUME /volume/data