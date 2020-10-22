FROM php:7.2-apache

RUN apt-get update
RUN apt-get install -y curl git zip unzip openssh-client sendmail libpng-dev zlib1g-dev libxslt-dev

RUN curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get update 
RUN apt-get install -y --no-install-recommends nodejs
RUN npm install -g npm