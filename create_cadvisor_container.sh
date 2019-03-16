#!/bin/bash

docker run \
--volume /:/rootfs:ro \
--volume /var/run:/var/run:rw \
--volume /sys:/sys:ro \
--volume /var/lib/docker/:/var/lib/docker:ro \
-p 8080:8080 \
-d \
--name my_cadvisor \
--restart on-failure:10 \
google/cadvisor
