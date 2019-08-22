This git project has different branches for different dxp versions, please, check for which DXP version you want to build your cluster


# Read first



- First make sure you have the license file ( has to be named dxpcluster.xml ) and the bundle zipped file ( has to be named liferay-dxp-tomcat-7.1.10.2-sp2-20190422172027516.zip ) in your root folder
- Start both nodes with "docker-compose up"
- ./copyLicense.sh (if it hasn't been copied; it should have been automatically copied)
- Restart tomcat 1 ( restartServer1.sh ), log in, see that it works, and then restart node 2 ( restartServer2.sh )





# Troubleshooting

- If the Liferay zipped bundle hasn't been copied correctly or unziped correctly, problems will arise (you can copy them again any time)
- Make sure your database and shared folders are clean before you start

