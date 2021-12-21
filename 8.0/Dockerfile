FROM php:8.0

LABEL maintainer="Ryan Durham <ryan@stagerightlabs.com>"

ARG DEBIAN_FRONTEND=noninteractive
ARG UID=1000
ARG GID=1000

# Add a user with UID 1000 and GID 1000
RUN groupadd -g ${GID} ubuntu && \
    useradd -u ${UID} -g ${GID} -ms /bin/bash ubuntu && \
    mkdir -p /home/ubuntu/.config/composer /home/ubuntu/.config/psysh && \
    chown -R ubuntu:ubuntu /home/ubuntu

# Install extension dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    unzip \
    zlib1g-dev \
    libicu-dev \
    libpng-dev \
    libpq-dev \
    libzip-dev \
    && rm -rf /var/cache/apt/lists/*

# Install extensions
RUN docker-php-ext-install gd pgsql zip bcmath intl

# Install PCOV
RUN pecl install pcov && docker-php-ext-enable pcov

# Adjust memory limit
RUN echo 'memory_limit = -1' >> /usr/local/etc/php/conf.d/docker-php-memlimit.ini

# Install Composer (v2.*)
ENV COMPOSER_HOME=/composer
ENV PATH=$PATH:/composer/vendor/bin
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2
