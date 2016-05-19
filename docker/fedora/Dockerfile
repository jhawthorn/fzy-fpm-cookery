FROM fedora
MAINTAINER john.hawthorn@gmail.com

RUN yum install -y --noplugins make gcc tar rpm-build git curl git rubygem-bundler ruby-devel
RUN yum clean all

RUN gem install fpm-cookery
