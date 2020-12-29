FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
apt-get -y install python3-pip

USER jenkins