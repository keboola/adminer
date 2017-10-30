FROM php:5.6-apache

RUN apt-get update && apt-get install -y ssh

RUN docker-php-ext-install pdo_mysql

COPY . /var/www/html
COPY ./adminer.conf /etc/apache2/sites-enabled/adminer.conf

WORKDIR /var/www/html

RUN a2dissite 000-default
