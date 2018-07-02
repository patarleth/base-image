FROM patarleth/ubuntu-base-development

WORKDIR /root

RUN git config --global user.email "patarleth@gmail.com" && git config --global user.name "Patrick Arleth" && \
 npm install -g @angular/cli

WORKDIR /root/project

ENTRYPOINT [ ng ]