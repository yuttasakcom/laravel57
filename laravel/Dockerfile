FROM php:7.3.1-fpm

LABEL maintainer="yuttasakcom@gmail.com"

RUN apt-get update && apt-get install -y \
    git \
    libmcrypt-dev \
    unzip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
RUN composer --version

# Set timezone to UTC
RUN rm /etc/localtime
RUN ln -s /usr/share/zoneinfo/UTC /etc/localtime
RUN "date"
