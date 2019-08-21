#!/usr/bin/env bash

docker restart $(docker ps -a | grep db | awk '{print $1}')
