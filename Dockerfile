FROM ubuntu:16.04

# Add some core repos
RUN apt-get update && \
	apt-get install -y sudo curl zip openssl build-essential python-software-properties && \
	apt-get clean;
	
# Openjdk8
RUN apt-get update && \
	apt-get install -y openjdk-8-jdk && \
	apt-get install -y ant && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/oracle-jdk8-installer;

RUN apt-get update && \
	apt-get install -y ca-certificates-java && \
	apt-get clean && \
	update-ca-certificates -f && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/oracle-jdk8-installer;

# Setup JAVA_HOME, this is useful for docker commandline
# Mysql and Others
RUN apt-get update && apt-get install -y mysql-client-5.7 --fix-missing 
RUN apt-get install -y net-tools --fix-missing 
RUN rm -rf /var/lib/apt/lists/*


# Setup JAVA_HOME and other environment variables, this is useful for docker commandline
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME
ENV PATH $PATH:$JAVA_HOME/bin
ENV CLASSPATH $JAVA_HOME/lib/tools.jar
ENV MANPATH $JAVA_HOME/man

ENV zipfile liferay-dxp-tomcat-7.1.10.2-sp2-20190422172027516.zip
ENV liferayhome /opt/liferay/liferay-dxp-7.1.10.2-sp2
ENV tomcathome ${liferayhome}/tomcat-9.0.6


# jdk7 is the default jdk
RUN ln -fs /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java /etc/alternatives/java

 
# jdk8 is the default jdk
#ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
#RUN ln -fs /usr/lib/jvm/java-8-oracle/jre/bin/java /etc/alternatives/java

EXPOSE 8080 8000 1234 7800

RUN mkdir -p /opt/liferay/ 

COPY $zipfile /opt/liferay/ 

RUN	cd /opt/liferay/ &&  unzip $zipfile 
RUN 	mkdir $liferayhome/deploy && ls -lrt $liferayhome/


COPY dxpcluster.xml $liferayhome/deploy/
COPY setenv.sh $tomcathome/bin/ 

COPY unicast.xml $tomcathome/webapps/ROOT/WEB-INF/classes/
COPY entrypoint.sh $tomcathome/bin/
COPY portal-ext.properties $liferayhome/
RUN chmod +x $tomcathome/bin/entrypoint.sh
 
 
ENTRYPOINT ["/opt/liferay/liferay-dxp-7.1.10.2-sp2/tomcat-9.0.6/bin/entrypoint.sh"]
 
CMD ["bash"]
