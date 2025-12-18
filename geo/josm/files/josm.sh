#!/bin/ksh

JAVA_CMD=$(javaPathHelper -c josm)
JAVA_OPTIONS="-Xmx256M \
	--add-exports=java.base/sun.security.action=ALL-UNNAMED \
	--add-exports=java.desktop/com.sun.imageio.plugins.jpeg=ALL-UNNAMED \
	--add-exports=java.desktop/com.sun.imageio.spi=ALL-UNNAMED"

${JAVA_CMD} ${JAVA_OPTIONS} -jar ${TRUEPREFIX}/share/josm/josm-latest.jar $*
