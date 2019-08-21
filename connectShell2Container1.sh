#!/usr/bin/env bash

container=$(docker ps | grep node1liferaydxp | awk '{print $1}')
echo "connecting to $container"
docker exec -it  $container bash
