# Please read first



- First make sure you have the license file ( has to be named dxpcluster.xml ) and the bundle zipped file ( has to be named liferay-dxp-digital-enterprise-tomcat-7.0.10.11-sp11-20190506123513875.zip ) in your root folder
- Start both nodes with "docker-compose up"
- ./copyLicense.sh (if it hasn't been copied; it should have been automatically copied)
- Restart tomcat 1 ( restartServer1.sh ), see that it works, and then restart node 2 ( restartServer2.sh )





# Troubleshooting

- If the Liferay zipped bundle hasn't been copied correctly or unziped correctly, problems will arise (you can copy them again any time)
- Make sure your database and shared folders are clean before you start

