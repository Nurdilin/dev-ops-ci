#!/bin/bash
cd jenkins-slave
sudo docker build -t jenkins-slave .
sudo docker run -d --privileged --name jenkins-slave_container --net infra  jenkins-slave -url "http://jenkins:8080/"
cd ..
