FROM php:8.3-cli-alpine

LABEL maintainer="Ryan Durham <ryan@stagerightlabs.com>"

# Adjust the www-data user to have UID 1000 and GID 1000
RUN deluser www-data && \
    adduser -s /bin/sh -D -u 1000 -g 1000 www-data www-data && \
    chown -R www-data:www-data /home/www-data

# Install extension dependencies
RUN apk add autoconf g++ libtool make git \
    icu-dev \
    libpng-dev \
    libpq-dev \
    libxslt-dev \
    libzip-dev \
    linux-headers \
    zlib-dev

# Install extensions
RUN docker-php-ext-install gd pgsql zip bcmath intl xsl

# Install XDebug and the MongoDB extenion
RUN pecl install xdebug mongodb && docker-php-ext-enable xdebug mongodb

# Adjust memory limit
RUN echo 'memory_limit = -1' >> /usr/local/etc/php/conf.d/docker-php-memlimit.ini

# Install Composer (v2.*)
ENV COMPOSER_HOME=/composer
ENV PATH=$PATH:/composer/vendor/bin
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2

# Clean
RUN apk del autoconf g++ libtool make linux-headers
RUN rm -rf /tmp/* /var/cache/apk/*

# Container Settings
ENTRYPOINT ["docker-php-entrypoint"]
WORKDIR /var/www
