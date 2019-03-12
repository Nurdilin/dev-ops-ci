#!/bin/bash
# Create a Jenkins Container
docker run\
	--name jenkins_server_container \
	-p 8080:8080 \
	-p 50000:50000 \ #for build slaves
	-v /var/run/docker.sock:/var/run/docker.sock \
	-v /tmp:/var/jenkins_home \
	-d \
	my_jenkins_server
