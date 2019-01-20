FROM kmdouglass/mm-docker:base-ubuntu-16.04-x86_64
MAINTAINER Kyle M. Douglass <kyle.m.douglass@gmail.com>

ENV NUM_CORES=8

ADD build.sh .

ENTRYPOINT [ "bash", "build.sh" ]
