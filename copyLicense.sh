#!/usr/bin/env bash

containers=$(docker ps | grep liferaydxp | awk '{print $1}')
#sleep 60
for c in $containers;do
docker cp /home/carlos/Documents/licenses/dxpcluster.xml $c:/opt/liferay/liferay-dxp-digital-enterprise-7.0.10.11-sp11/deploy/
done
