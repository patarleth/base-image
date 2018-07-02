FROM patarleth/ubuntu-base-development

WORKDIR /opt

RUN curl -s -o apache-maven-3.5.4-bin.tar.gz http://mirrors.gigenet.com/apache/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz && \
 tar xf apache-maven-3.5.4-bin.tar.gz && \
 ln -s apache-maven-3.5.4 maven && \
 ln -s /opt/maven/bin/mvn /usr/bin/mvn



WORKDIR /root/project

ENTRYPOINT [ "/usr/bin/mvn" ]