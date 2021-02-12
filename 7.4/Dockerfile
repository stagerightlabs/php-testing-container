FROM ubuntu:20.04

LABEL maintainer="Ryan Durham <ryan@stagerightlabs.com>"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y software-properties-common curl
RUN add-apt-repository ppa:ondrej/php -y
RUN add-apt-repository ppa:git-core/ppa -y
RUN apt-get update -y
RUN apt-get install -y \
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
    php7.4-phpdbg


