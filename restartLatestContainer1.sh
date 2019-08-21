#!/usr/bin/env bash

docker restart $(docker ps -a | grep node1liferaydxp | awk '{print $1}')
