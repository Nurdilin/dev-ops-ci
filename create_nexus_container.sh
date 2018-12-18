#!/bin/bash
# Create a Nexus Container
sudo docker run -d --name nexus_container   --net infra -p 8081:8081 -p 8082:8082 sonatype/nexus3
