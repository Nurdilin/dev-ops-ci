#!/bin/bash
# Create a Gitlab Container
#Download and run image from https://hub.docker.com/ 
sudo docker run \
	-d \
	--name gitlab_container \ 
	--net infra \
	-p 22:22 \
	-p 80:80 \
	-p 443:443 \
	gitlab/gitlab-ce
