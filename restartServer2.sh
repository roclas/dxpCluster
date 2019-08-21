#!/usr/bin/env bash

container=$(docker ps | grep node2liferaydxp | awk '{print $1}')
echo "connecting to $container"
docker exec -i $container /opt/liferay/liferay-dxp-digital-enterprise-7.0.10.11-sp11/tomcat-8.0.32/bin/shutdown.sh 
sleep 20
docker exec -i $container /opt/liferay/liferay-dxp-digital-enterprise-7.0.10.11-sp11/tomcat-8.0.32/bin/startup.sh 
