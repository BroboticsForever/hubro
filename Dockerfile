#DOCKER VERSION 1.1.2
FROM phusion/baseimage:0.9.13
MAINTAINER Ian Tait <thetaiter@ku.edu>

#INITIAL SETUP
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y upgrade

#INSTALL BUILD ESSENTIALS
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential libicu-dev libexpat1-dev

#INSTALL PYTHON
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-dev

#INSTALL REDIS SERVER
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install redis-server

RUN mkdir /etc/service/redis
ADD scripts/redis.sh /etc/service/redis/run
RUN chmod +x /etc/service/redis/run

RUN sed -i 's/daemonize yes/daemonize no/g' /etc/redis/redis.conf
RUN sed -i 's/bind 127.0.0.1/# bind 127.0.0.1/g' /etc/redis/redis.conf

#INSTALL NODEJS
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install nodejs

#SETUP HUBRO
COPY hubro /root/hubro
COPY ./scripts/start_hubro.sh /etc/my_init.d/start_hubro.sh
RUN \
    cd /root/hubro && \
    npm install

#CLEANUP
RUN apt-get -y clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#USE PHUSION INIT SYSTEM
CMD ["/sbin/my_init"]
