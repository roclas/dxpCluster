#!/usr/bin/env bash

docker ps | grep db | awk '{print $1}' | xargs docker stop
docker ps | grep liferaydxp | awk '{print $1}' | xargs docker stop

