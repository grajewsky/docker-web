
FROM node:10.19.0

RUN apt-get update
RUN apt-get install -y zip unzip openssh-client


FROM composer:1.10.15