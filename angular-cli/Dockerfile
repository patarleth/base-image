FROM patarleth/ubuntu-base-development

WORKDIR /root

RUN git config --global user.email "patarleth@gmail.com" && git config --global user.name "Patrick Arleth" && \
 npm install -g @angular/cli

RUN apt-get install jq -y

ADD install-global.sh /root/install-global.sh
 
RUN chmod 777 /root/install-global.sh; /root/install-global.sh

WORKDIR /root/project

ENTRYPOINT [ "/usr/bin/ng" ]