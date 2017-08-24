FROM jenkins/jenkins:lts

USER root

RUN curl -o ./docker-1.13.1.tgz https://get.docker.com/builds/Linux/x86_64/docker-1.13.1.tgz &&\
    tar -xvzf docker-1.13.1.tgz &&\
    mv ./docker/docker /bin

RUN curl -L https://github.com/docker/compose/releases/download/1.15.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose &&\
    chmod +x /usr/local/bin/docker-compose

USER jenkins
