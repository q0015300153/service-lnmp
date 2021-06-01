FROM php:8.0-fpm

RUN apt-get update && \
    apt-get install -y git zip

RUN apt-get update && apt-get install -y \
    zlib1g-dev libzip-dev sqlite3 libsqlite3-dev

RUN docker-php-ext-install zip pdo pdo_mysql pdo_sqlite

RUN pecl install uopz
RUN curl --silent --show-error https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

ENV PATH                     $PATH:/root/.composer/vendor/bin
ENV COMPOSER_ALLOW_SUPERUSER 1
RUN composer global require laravel/installer