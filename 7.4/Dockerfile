FROM ubuntu:20.04

LABEL maintainer="Ryan Durham <ryan@stagerightlabs.com>"

ARG DEBIAN_FRONTEND=noninteractive

# Add a user with UID 1000
RUN useradd -u 1000 -ms /bin/bash ubuntu && \
    mkdir -p /home/ubuntu/.config/composer /home/ubuntu/.config/psysh && \
    chown -R ubuntu:ubuntu /home/ubuntu

# Update the base image
RUN apt-get update && \
    apt-get install -y --no-install-recommends software-properties-common curl && \
    add-apt-repository ppa:ondrej/php -y

# Install PHP 7.4
RUN apt-get install -y --no-install-recommends \
    unzip  \
    php7.4-cli \
    php7.4-gd \
    php7.4-json \
    php7.4-mbstring \
    php7.4-mysql \
    php7.4-pgsql \
    php7.4-sqlite3 \
    php7.4-xml \
    php7.4-zip \
    php7.4-curl \
    php7.4-soap \
    php7.4-bcmath \
    php7.4-imagick \
    php7.4-intl \
    php7.4-redis \
    php7.4-imap \
    php7.4-phpdbg \
    && rm -rf /var/cache/apt/lists/*

# Install Composer (v2.*)
ENV COMPOSER_HOME=/composer
ENV PATH=$PATH:/composer/vendor/bin
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2
