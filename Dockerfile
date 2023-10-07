FROM alpine:3.16
MAINTAINER "Vitali Khlebko vitali.khlebko@vetal.ca"

RUN apk update && apk add git build-base

RUN cd /tmp  &&\
  git clone https://github.com/Vetal-ca/pfSense-pkg-zerotier.git zerotier &&\
  cd zerotier &&\
  make clean &&\
  make package