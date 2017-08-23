FROM jenkins/jenkins:lts

USER root

RUN curl -o ./docker-1.13.1.tgz https://get.docker.com/builds/Linux/x86_64/docker-1.13.1.tgz &&\
    tar -xvzf docker-1.13.1.tgz &&\
    mv ./docker/docker /bin

USER jenkins
