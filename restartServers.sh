#!/usr/bin/env bash

container1=$(docker ps | grep node1liferaydxp | awk '{print $1}')
container2=$(docker ps | grep node2liferaydxp | awk '{print $1}')
echo "connecting to $container"
docker exec -i $container1 /opt/liferay/liferay-dxp-7.1.10.2-sp2/tomcat-9.0.6/bin/shutdown.sh 
docker exec -i $container2 /opt/liferay/liferay-dxp-7.1.10.2-sp2/tomcat-9.0.6/bin/shutdown.sh 
sleep 30
docker exec -i $container1 /opt/liferay/liferay-dxp-7.1.10.2-sp2/tomcat-9.0.6/bin/startup.sh 
docker exec -i $container2 /opt/liferay/liferay-dxp-7.1.10.2-sp2/tomcat-9.0.6/bin/startup.sh 
