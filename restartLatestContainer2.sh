#!/usr/bin/env bash

docker restart $(docker ps -a | grep node2liferaydxp | awk '{print $1}')
