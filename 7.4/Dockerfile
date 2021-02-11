FROM php:7.4-alpine

LABEL maintainer="Ryan Durham <ryan@stagerightlabs.com>"

RUN apk add --no-cache autoconf g++ libtool make \
    pcre-dev \
    libmcrypt-dev \
    postgresql-dev \
    zlib-dev \
    libzip-dev \
    imagemagick-dev \
    imagemagick \
    freetype \
    freetype-dev \
    libpng \
    libpng-dev \
    libjpeg-turbo \
    libjpeg-turbo-dev \
    libjpeg \
    libxml2-dev \
    curl-dev

RUN pecl install -o -f redis imagick && docker-php-ext-enable redis imagick

RUN docker-php-ext-configure gd \
    --enable-gd \
    --with-freetype \
    --with-jpeg

RUN docker-php-ext-install \
    gd \
    json \
    mysqli \
    pgsql \
    xml \
    zip \
    pdo \
    pdo_pgsql \
    pdo_mysql \
    curl \
    bcmath \
    soap \
    intl

# clean
RUN apk del autoconf g++ libtool make pcre-dev
RUN rm -rf /tmp/* /var/cache/apk/*
