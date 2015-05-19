#!/bin/sh

JAVA_CMD=$(javaPathHelper -c burpsuite)

exec ${JAVA_CMD} -jar ${TRUEPREFIX}/share/java/classes/burpsuite.jar "$@" 
