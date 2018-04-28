FROM node:latest

LABEL maintainer="Merlin Diavova <merlindiavova@amesplash.co.uk>"

WORKDIR /var/www/html

ARG uid=999

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb http://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get install -y git yarn \
    && apt-get -y autoremove \
    && apt-get clean \
    && npm i -g @adonisjs/cli \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN usermod -u $uid node