#!/bin/bash

#bind host's 8081 to dockers 8080,not best practise just for personal experiment

sudo docker run -d -p 8081:8080 hello_app_image 
