FROM php:7.4-fpm-alpine

WORKDIR /var/www

RUN docker-php-ext-install pdo pdo_mysql

#RUN apk update
#RUN apk add

#RUN apk update && apk install libmcrypt-dev mysql-client && docker-php-ext-install mcrypt pdo_mysql
ADD . /var/www
RUN chown -R www-data:www-data /var/www
