#DEBUG_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000"

CATALINA_OPTS="$CATALINA_OPTS $DEBUG_OPTS -Dfile.encoding=UTF8 -Djava.net.preferIPv4Stack=true  -Dorg.apache.catalina.loader.WebappClassLoader.ENABLE_CLEAR_REFERENCES=false -Duser.timezone=GMT -Xmx1024m -XX:MaxPermSize=256m"

CATALINA_OPTS="$CATALINA_OPTS -Djava.net.preferIPv4Stack=true"
CATALINA_OPTS="$CATALINA_OPTS -Djgroups.bind_addr=node1liferaydxp"
CATALINA_OPTS="$CATALINA_OPTS -Djgroups.tcpping.initial_hosts=node1liferaydxp[7800],node2liferaydxp[7800]"
