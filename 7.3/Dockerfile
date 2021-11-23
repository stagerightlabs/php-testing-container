FROM ubuntu:20.04

LABEL maintainer="Ryan Durham <ryan@stagerightlabs.com>"

ARG DEBIAN_FRONTEND=noninteractive

# Update the base image
RUN apt-get update && \
    apt-get install -y --no-install-recommends software-properties-common curl && \
    add-apt-repository ppa:ondrej/php -y

# Install PHP 7.3
RUN apt-get install -y --no-install-recommends \
    unzip  \
    php7.3-cli \
    php7.3-gd \
    php7.3-json \
    php7.3-mbstring \
    php7.3-mysql \
    php7.3-pgsql \
    php7.3-sqlite3 \
    php7.3-xml \
    php7.3-zip \
    php7.3-curl \
    php7.3-soap \
    php7.3-bcmath \
    php7.3-imagick \
    php7.3-intl \
    php7.3-redis \
    php7.3-imap \
    php7.3-phpdbg \
    && rm -rf /var/cache/apt/lists/*

# Install Composer (v2.*)
ENV COMPOSER_HOME=/composer
ENV PATH=$PATH:/composer/vendor/bin
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2
