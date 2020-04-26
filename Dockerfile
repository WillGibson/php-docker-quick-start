FROM php:7.4-cli

RUN apt-get update \
    && apt-get install -y libzip-dev zlib1g-dev
RUN docker-php-ext-install zip
#RUN set -eux; apt-get update; apt-get install -y libzip-dev zlib1g-dev; docker-php-ext-install zip
#RUN pecl install xdebug && echo ";zend_extension=xdebug.so" > /usr/local/etc/php/conf.d/xdebug.ini
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer
RUN apt-get clean && apt-get purge
