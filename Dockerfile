FROM nginx

RUN apt-get update; apt-get install -y \
    php5.6 \
    mkdir /etc/nginx/external/

COPY src/ /usr/share/nginx/html/
COPY conf/ /etc/nginx/conf.d/
COPY key/ /etc/nginx/external/

EXPOSE 443
