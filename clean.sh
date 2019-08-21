#!/usr/bin/env bash

docker ps | grep db | awk '{print $1}' | xargs docker stop
docker ps | grep liferaydxp | awk '{print $1}' | xargs docker stop
docker ps -a | grep liferaydxp | awk '{print $1}' | xargs docker rm 
docker ps -a | grep db | awk '{print $1}' | xargs docker rm 
docker images | grep liferaydxp | awk '{print $3}' | xargs docker rmi

