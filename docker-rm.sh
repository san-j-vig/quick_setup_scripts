#!/bin/bash
docker container rm $(docker container ls –aq)
/usr/bin/docker rm $(/usr/bin/docker ps -a | awk '{print $1}')
