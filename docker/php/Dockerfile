# docker/php/Dockerfile
# Used to copy composer bin
FROM composer:1.7.2 as composer

RUN composer self-update

#############################

FROM php:7.4.14-fpm as php

ENV TERM=xterm-256color
COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        libicu-dev \
        libpcre3-dev \
        libssl-dev \
        openssl \
        wget \
        zlib1g-dev \
        libzip-dev \
    && rm -rf /var/lib/apt/lists/* \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN docker-php-ext-install -j"$(nproc)" intl pdo_mysql zip

RUN useradd docker -u 1000

ENV COMPOSER_HOME /var/cache/composer
RUN mkdir /app /var/cache/composer && \
    chown docker:docker /app /var/cache/composer

RUN chown -R docker:docker /usr/local/var/log/

USER docker

WORKDIR /app

CMD ["php-fpm", "-F"]
