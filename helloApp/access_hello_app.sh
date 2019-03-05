#!/bin/bash

CONTAINER_NAME=$(docker container ps |grep hello_app_image |awk '{ print $NF }')
docker exec -it $CONTAINER_NAME /bin/bash
