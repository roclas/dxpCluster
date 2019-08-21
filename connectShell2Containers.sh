#!/usr/bin/env bash

containers=$(docker ps | grep liferaydxp | awk '{print $1}')
for c in $containers;do
	echo "connecting to $c"
	docker exec -it  $c bash
done
