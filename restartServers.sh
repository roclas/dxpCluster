#!/usr/bin/env bash

container1=$(docker ps | grep node1liferaydxp | awk '{print $1}')
container2=$(docker ps | grep node2liferaydxp | awk '{print $1}')
echo "connecting to $container"
docker exec -i $container1 /opt/liferay/liferay-dxp-digital-enterprise-7.0.10.11-sp11/tomcat-8.0.32/bin/shutdown.sh 
docker exec -i $container2 /opt/liferay/liferay-dxp-digital-enterprise-7.0.10.11-sp11/tomcat-8.0.32/bin/shutdown.sh 
sleep 30
docker exec -i $container1 /opt/liferay/liferay-dxp-digital-enterprise-7.0.10.11-sp11/tomcat-8.0.32/bin/startup.sh 
docker exec -i $container2 /opt/liferay/liferay-dxp-digital-enterprise-7.0.10.11-sp11/tomcat-8.0.32/bin/startup.sh 
