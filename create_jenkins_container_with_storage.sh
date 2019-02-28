#!/bin/bash

sudo docker run -d --name jenkins_container --net infra -p 8080:8080 -p 50000:50000 -v /opt/pers_storage:/home/inside_jenkins jenkins/jenkins:lts



