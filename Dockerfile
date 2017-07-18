#
# Base Dockerfile
#
#
FROM kalilinux/kali-linux-docker

MAINTAINER Hugh Pierce

ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list && \
echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && apt-get -y dist-upgrade && apt-get clean && \
    apt-get -y install software-properties-common sudo dnsutils \ 
    openssh-server bash-completion vim command-not-found git man && \
    cp /etc/skel/.bashrc /root/

