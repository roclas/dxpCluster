#!/usr/bin/env bash

container=$(docker ps | grep node1liferaydxp | awk '{print $1}')
echo "connecting to $container"
docker exec -i $container /opt/liferay/liferay-dxp-7.1.10.2-sp2/tomcat-9.0.6/bin/shutdown.sh 
sleep 10
docker exec -i $container /opt/liferay/liferay-dxp-7.1.10.2-sp2/tomcat-9.0.6/bin/startup.sh 
