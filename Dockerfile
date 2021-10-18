FROM ubuntu:20.04

RUN apt-get update \ 
  && apt-get install -y freeradius-mysql \
  && rm -rf /var/lib/apt/lists/* 

EXPOSE 1812/udp 1813/udp

ENTRYPOINT ["/usr/sbin/freeradius"]
