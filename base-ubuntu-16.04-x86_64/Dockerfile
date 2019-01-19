FROM ubuntu:16.04
MAINTAINER Kyle M. Douglass <kyle.m.douglass@gmail.com>

# Get the build dependencies
RUN apt-get update && apt-get -y install --no-install-recommends \
    autoconf \
    automake \
    build-essential \
    ccache \
    libboost-all-dev \
    libtool \
    pkg-config \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set up ccache
ENV PATH "/usr/lib/ccache:$PATH"
ENV CCACHE_DIR="/.ccache"
VOLUME /.ccache

# Add the Micro-Manager base directory
VOLUME /micro-manager
