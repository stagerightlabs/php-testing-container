FROM ubuntu:20.04

LABEL maintainer="Ryan Durham <ryan@stagerightlabs.com>"

ARG DEBIAN_FRONTEND=noninteractive

# Add a user with UID 1000
RUN useradd -u 1000 ubuntu

# Update the base image
RUN apt-get update && \
    apt-get install -y software-properties-common curl && \
    add-apt-repository ppa:ondrej/php -y

# Install PHP 8.0
RUN apt-get install -y \
    unzip  \
    php8.0-cli \
    php8.0-gd \
    php8.0-mbstring \
    php8.0-mysql \
    php8.0-pgsql \
    php8.0-sqlite3 \
    php8.0-xml \
    php8.0-zip \
    php8.0-curl \
    php8.0-soap \
    php8.0-bcmath \
    php8.0-imagick \
    php8.0-intl \
    php8.0-redis \
    php8.0-imap \
    php8.0-phpdbg

# Install Composer (v2.*)
ENV COMPOSER_HOME=/composer
ENV PATH=$PATH:/composer/vendor/bin
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2
