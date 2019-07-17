FROM ubuntu:16.04

ARG DEBIAN_FRONTEND=noninteractive

RUN	apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y \
    linux-headers-generic \
  && apt-get install -y \
    build-essential \
    git-core \
    g++ \
    realpath \
    patch \
    byacc \
    make \
    python-urlgrabber \
    autoconf \
    automake \
    nano \
    wget \
    pv \
    dialog \
    bzip2

WORKDIR /build

ADD build.sh /build/
RUN /build/build.sh

VOLUME /build

CMD ["/bin/bash"]
