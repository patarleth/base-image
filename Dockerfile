FROM ubuntu:16.04

RUN apt-get update && apt-get install apt-utils -y && apt-get update && \
 apt-get upgrade -y  && \
 apt-get install build-essential gcc g++ make git golang emacs-nox python3 python3-pip virtualenvwrapper default-jdk curl htop nmon glances -y && \
 curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install nodejs && \
 bash -c 'source /usr/share/virtualenvwrapper/virtualenvwrapper.sh && mkvirtualenv -p /usr/bin/python3 python3 && mkvirtualenv -p /usr/bin/python2.7 python2'

