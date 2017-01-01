FROM ubuntu:14.04
MAINTAINER john.hawthorn@gmail.com

RUN apt-get update
RUN apt-get install -y ruby2.0 ruby2.0-dev build-essential git-core curl lsb-release
RUN ln -sf /usr/bin/ruby2.0 /usr/bin/ruby && \
    ln -sf /usr/bin/gem2.0 /usr/bin/gem

RUN gem install --no-rdoc --no-ri fpm-cookery
