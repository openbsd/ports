#!/bin/ksh

if [[ "$1" == "--help"  || $# -lt 1 ]]; then
    echo -e "Usage:"
    echo -e "\t--host=HOST\t sets the hostname of the XMPP server (must match virtualhost)"
    exit 1
fi

[[ -r ${SYSCONFDIR}/jicofo/jicofo.in.sh ]] && . ${SYSCONFDIR}/jicofo/jicofo.in.sh

: ${JICOFO_CONF:=${SYSCONFDIR}/jicofo/jicofo.conf}
: ${JICOFO_LOG_CONFIG:=${TRUEPREFIX}/share/jicofo/lib/logging.properties}
: ${JICOFO_TRUSTSTORE:=${SYSCONFDIR}/ssl/jicofo-key.store}
: ${JICOFO_TRUSTSTORE_PASSWORD:='CHANGE_ME'}
: ${JICOFO_MAXMEM:=3G}
: ${JICOFO_DHKEYSIZE:=2048}

JAVA=$(${LOCALBASE}/bin/javaPathHelper -c jicofo)
mainClass="org.jitsi.jicofo.Main"
cp=${TRUEPREFIX}/share/java/classes/jicofo.jar

exec ${JAVA} -Xmx${JICOFO_MAXMEM} -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/tmp \
	-Dconfig.file=${JICOFO_CONF} \
	-Djava.util.logging.config.file=${JICOFO_LOG_CONFIG} \
	-Djdk.tls.ephemeralDHKeySize=${JICOFO_DHKEYSIZE} \
	-Djavax.net.ssl.trustStore=${JICOFO_TRUSTSTORE} \
	-Djavax.net.ssl.trustStorePassword=${JICOFO_TRUSTSTORE_PASSWORD} \
	${JAVA_SYS_PROPS} \
	-cp ${cp} ${mainClass} ${@}
