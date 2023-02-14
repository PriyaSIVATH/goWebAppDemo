# Dockerfile copy from AvinashKumar - The Learning Destination

FROM ubuntu:latest

RUN apt update && apt install openssh-server sudo -y

RUN sudo apt install -y openjdk-11-jdk

RUN sudo apt install -y git

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 jenkins

RUN echo 'jenkins:jenkins' | chpasswd

RUN service ssh start

EXPOSE 22

WORKDIR /home/ubuntu/priya/jenkins_workspace

RUN sudo chmod 777 /home/ubuntu/priya/jenkins_workspace


