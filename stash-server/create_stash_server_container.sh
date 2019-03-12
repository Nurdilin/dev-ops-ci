#!/bin/bash

docker run \
	-v /opt/stash:/var/atlassian/application-data/bitbucket \
	--name stash_container \
	-d \
	-p 7990:7990 \
	-p 7999:7999 \
	atlassian/bitbucket-server
