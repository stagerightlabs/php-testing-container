FROM php:7.2-cli-alpine

LABEL maintainer="Ryan Durham <ryan@stagerightlabs.com>"

# Adjust the www-data user to have UID 1000 and GID 1000
RUN deluser www-data && \
    adduser -s /bin/sh -D -u 1000 -g 1000 www-data www-data && \
    chown -R www-data:www-data /home/www-data

# Install extension dependencies
# libpq-dev is not available in alpine 3.12 so we will use postgresql-dev instead,
# which will add some bloat to the container.
RUN apk update && apk add autoconf g++ libtool make \
    icu-dev \
    libpng-dev \
    postgresql-dev \
    libxslt-dev \
    libzip-dev \
    zlib-dev

# Install extensions
RUN docker-php-ext-install gd pgsql zip bcmath intl xsl

# Install PCOV extension
RUN pecl install pcov && docker-php-ext-enable pcov

# Install MongoDB extension
RUN pecl install mongodb && docker-php-ext-enable mongodb

# Adjust memory limit
RUN echo 'memory_limit = -1' >> /usr/local/etc/php/conf.d/docker-php-memlimit.ini

# Install Composer (v2.*)
ENV COMPOSER_HOME=/composer
ENV PATH=$PATH:/composer/vendor/bin
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2

# Clean
RUN apk del autoconf g++ libtool make
RUN rm -rf /tmp/* /var/cache/apk/*

# Container Settings
ENTRYPOINT ["docker-php-entrypoint"]
WORKDIR /var/www
