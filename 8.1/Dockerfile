FROM ubuntu:20.04

LABEL maintainer="Ryan Durham <ryan@stagerightlabs.com>"

ARG DEBIAN_FRONTEND=noninteractive

# Update the base image
RUN apt-get update && \
    apt-get install -y --no-install-recommends software-properties-common curl && \
    add-apt-repository ppa:ondrej/php -y

# Install PHP 8.1
RUN apt-get install -y --no-install-recommends \
    unzip  \
    php8.1-cli \
    php8.1-gd \
    php8.1-mbstring \
    php8.1-mysql \
    php8.1-pgsql \
    php8.1-sqlite3 \
    php8.1-xml \
    php8.1-zip \
    php8.1-curl \
    php8.1-soap \
    php8.1-bcmath \
    php8.1-imagick \
    php8.1-intl \
    php8.1-redis \
    php8.1-imap \
    php8.1-phpdbg \
    && rm -rf /var/cache/apt/lists/*

# Install Composer (v2.*)
ENV COMPOSER_HOME=/composer
ENV PATH=$PATH:/composer/vendor/bin
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2
