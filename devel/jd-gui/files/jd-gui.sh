#!/bin/sh

JAVA_CMD=$(javaPathHelper -c jd-gui)

exec ${JAVA_CMD} -jar ${TRUEPREFIX}/share/java/classes/jd-gui.jar "$@" 
