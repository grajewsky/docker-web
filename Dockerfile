
FROM node:12.16.0

RUN apt-get update
RUN apt-get install zip unzip openssh-client


FROM composer:1.10.15