#!/bin/ksh 

JAVA_CMD=$(javaPathHelper -c josm)
JAVA_OPTIONS=-Xmx256M

${JAVA_CMD} ${JAVA_OPTIONS} -jar ${TRUEPREFIX}/share/josm/josm-latest.jar $*
