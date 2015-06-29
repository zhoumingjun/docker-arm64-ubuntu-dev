FROM ericvh/arm64-ubuntu

MAINTAINER zhoumingjun <zhoumingjun@gmail.com>
# PREREQ: have universe in your sources...
# if you don't have binfmt-support setup right, these will fail
RUN dpkg --add-architecture armhf
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y \
    git-core \
    subversion \
    llvm \
    gdb \
    binutils-multiarch \
    binutils-multiarch-dev \
    crossbuild-essential-armhf \
    clang \
    software-properties-common \
    python-software-properties \
    openjdk-7-jdk 

RUN apt-get clean