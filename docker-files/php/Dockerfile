FROM php:7.4-fpm-alpine
RUN apk update; \
    apk upgrade;

RUN apk add --no-cache \
	$PHPIZE_DEPS

RUN docker-php-ext-install mysqli pdo pdo_mysql 
RUN pecl install xdebug-2.9.4 \
    && docker-php-ext-enable xdebug

COPY xdebug.ini /usr/local/etc/php/conf.d
