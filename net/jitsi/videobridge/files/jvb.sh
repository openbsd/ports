#!/bin/ksh

[[ -r ${SYSCONFDIR}/jvb/jvb.in.sh ]] && . ${SYSCONFDIR}/jvb/jvb.in.sh

: ${JVB_CONF:=${SYSCONFDIR}/jvb/jvb.conf}
: ${JVB_LOG_CONFIG:=${TRUEPREFIX}/share/jvb/lib/logging.properties}
: ${JVB_TRUSTSTORE:=${SYSCONFDIR}/ssl/jvb-key.store}
: ${JVB_TRUSTSTORE_PASSWORD:='CHANGE_ME'}
: ${JVB_MAXMEM:=3G}
: ${JVB_DHKEYSIZE:=2048}
: ${JVB_GC_TYPE:=G1GC}
: ${JVB_SC_HOME_LOCATION:=${SYSCONFDIR}}
: ${JVB_SC_HOME_NAME:=jvb}

JAVA=$(${LOCALBASE}/bin/javaPathHelper -c "jitsi-videobridge")
mainClass="org.jitsi.videobridge.MainKt"
cp="${TRUEPREFIX}/share/java/classes/jitsi-videobridge.jar"

exec ${JAVA} -Xmx${JVB_MAXMEM} -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/tmp \
	-Dconfig.file=${JVB_CONF} \
	-Djava.util.logging.config.file=${JVB_LOG_CONFIG} \
	-Djdk.tls.ephemeralDHKeySize=${JVB_DHKEYSIZE} \
	-XX:+Use${JVB_GC_TYPE} \
	-Djavax.net.ssl.trustStore=${JVB_TRUSTSTORE} \
	-Djavax.net.ssl.trustStorePassword=${JVB_TRUSTSTORE_PASSWORD} \
	-Dnet.java.sip.communicator.SC_HOME_DIR_LOCATION=${JVB_SC_HOME_LOCATION} \
	-Dnet.java.sip.communicator.SC_HOME_DIR_NAME=${JVB_SC_HOME_NAME} \
	${JAVA_SYS_PROPS} \
	-cp ${cp} ${mainClass} ${@}
