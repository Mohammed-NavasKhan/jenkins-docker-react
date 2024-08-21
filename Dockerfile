FROM jenkins/jenkins:lts-jdk17
USER root
RUN apt-get update
RUN curl -sSL https://get.docker.com/ | sh