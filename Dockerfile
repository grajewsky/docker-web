
FROM node:10.19.0

RUN apt-get update
RUN apt-get install -y zip unzip openssh-client


FROM php:7-alpine

RUN apk upgrade && apk add curl openssh-client git

RUN curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer