#!/usr/bin/env bash

container1=$(docker ps | grep node1liferaydxp | awk '{print $1}')
container2=$(docker ps | grep node2liferaydxp | awk '{print $1}')
docker cp portal-ext.properties $container2:/opt/liferay/liferay-dxp-digital-enterprise-7.0.10.11-sp11/
