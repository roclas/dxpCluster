#!/usr/bin/env bash

containers=$(docker ps | grep liferaydxp | awk '{print $1}')
#sleep 60
for c in $containers;do
docker cp /home/carlos/Documents/licenses/dxpcluster.xml $c:/opt/liferay/liferay-dxp-7.1.10.2-sp2/deploy/
done
