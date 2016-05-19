FROM ubuntu:14.04
MAINTAINER john.hawthorn@gmail.com

RUN apt-get update
RUN apt-get install -y ruby1.9.1 ruby1.9.1-dev build-essential git-core curl lsb-release
RUN apt-get clean

RUN gem install --no-rdoc --no-ri fpm-cookery
