#!/bin/sh

# galleon - invoke galleon startup script with Java set correctly.

export JAVA_HOME="$(${TRUEPREFIX}/bin/javaPathHelper -h galleon)"

exec sh ${TRUEPREFIX}/lib/galleon/bin/galleon.sh $*

