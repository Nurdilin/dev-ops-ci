#!/bin/bash

sudo docker network create --subnet=172.18.0.0/16 infra
sudo docker network ls



# Create a Gitlab Container
#Download and run image from https://hub.docker.com/ 
sudo docker run -d --name gitlab_container  --net infra -p 22:22 -p 80:80 -p 443:443 gitlab/gitlab-ce

# Create a Jenkins Container
sudo docker run -d --name jenkins_container --net infra -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts

# Create a Nexus Container
sudo docker run -d --name nexus_container   --net infra -p 8081:8081 -p 8082:8082 sonatype/nexus3

# Create a Jenkins Slave Container
cd jenkins-slave
sudo docker build -t jenkins-slave .
sudo docker run -d --privileged --name jenkins-slave_container --net infra  jenkins-slave -url "http://jenkins:8080/"
cd ..

# List all containers
sudo docker ps
