FROM php:8.1-apache
RUN apt-get update -y && apt-get upgrade -y
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN a2enmod rewrite
