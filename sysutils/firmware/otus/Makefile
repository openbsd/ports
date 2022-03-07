FW_DRIVER=	otus
FW_VER=		1.0
REVISION=	1

WRKDIST=	${WRKDIR}
EXTRACT_SUFX=	.tgz

do-install:
	${INSTALL_DATA} ${WRKSRC}/otus-license ${PREFIX}/firmware/otus-license
	echo "\nThe following files are under this license:\n\notus-init otus-main\n\nThese files are needed by otus(4) devices." >> ${PREFIX}/firmware/otus-license
	${INSTALL_DATA} ${WRKSRC}/otus-init ${PREFIX}/firmware/otus-init
	${INSTALL_DATA} ${WRKSRC}/otus-main ${PREFIX}/firmware/otus-main

.include <bsd.port.mk>
