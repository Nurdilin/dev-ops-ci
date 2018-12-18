#!/bin/bash
# Create a Jenkins Container
sudo docker run -d --name jenkins_container --net infra -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts


echo "following password will be used for setting up Jenkins for the first time"
sudo docker exec -ti jenkins_container cat /var/jenkins_home/secrets/initialAdminPassword
# this will return something like : 8cc9f9a7b61f49b192bc91d5fb8618f4
# this is used for accessing Jenkins for a first time

