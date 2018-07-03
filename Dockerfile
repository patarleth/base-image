FROM ubuntu:16.04

ENV GOPATH=/root/go

RUN apt-get update && apt-get install apt-utils -y && apt-get update && \
 apt-get upgrade -y  && \
 apt-get install build-essential gcc g++ make git golang-1.10-go emacs-nox python3 python3-pip virtualenvwrapper default-jdk curl htop nmon glances -y && \
 curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install nodejs && \
 bash -c 'source /usr/share/virtualenvwrapper/virtualenvwrapper.sh && mkvirtualenv -p /usr/bin/python3 python3 && mkvirtualenv -p /usr/bin/python2.7 python2' && \
 apt-get install jq -y && pip3 install --upgrade pip && \
 pip install yq && \
 pip install awscli --upgrade --user && \
 echo 'PATH=$HOME/.local/bin:$PATH' >> /root/.profile && \
 echo 'PATH=/usr/lib/go-1.10/bin:$PATH' >> /root/.profile && \
 npm install -g typescript tslint webpack && \
 /usr/lib/go-1.10/bin/go get -u github.com/fgeller/kt && \
 /usr/lib/go-1.10/bin/go get -u gopkg.in/mikefarah/yq.v2