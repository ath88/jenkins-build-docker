FROM jenkins:latest

USER root

RUN apt-get update
RUN apt-get install socat

# Install Docker (to be used as a client only)
RUN wget -qO- https://get.docker.com/ | sh
RUN usermod -aG docker jenkins
