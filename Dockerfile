FROM ubuntu:18.04
RUN apt-get -y update &&\
    apt-get -y upgrade &&\
    apt-get -y install git curl make gcc gnat gpr gprbuild
WORKDIR /tmp
RUN git clone --recurse-submodules https://github.com/AdaCore/aws.git
WORKDIR /tmp/aws
RUN make setup build install
