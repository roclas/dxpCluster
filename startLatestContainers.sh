#!/usr/bin/env bash

dbcontainer=$(docker ps -a| grep "mysql:5.5"| awk '{print $1}')
containers="$(docker ps -a| grep liferaydxp | awk '{print $1}') $dbcontainer"
for c in $containers;do
	echo "restarting $c"
	docker restart $c
done
