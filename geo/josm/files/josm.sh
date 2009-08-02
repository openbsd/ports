#!/bin/ksh 

JAVA_CMD=$(javaPathHelper -c josm)

${JAVA_CMD} -jar ${TRUEPREFIX}/share/josm/josm-latest.jar $*
