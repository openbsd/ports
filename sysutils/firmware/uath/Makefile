# $OpenBSD: Makefile,v 1.1.1.1 2011/06/09 17:08:14 sthen Exp $

FW_DRIVER=	uath
FW_VER=		2.0
REVISION=	0

do-install:
	${INSTALL_DATA} ${WRKSRC}/license.txt ${PREFIX}/firmware/uath-license
	echo "\nThe following file is under this license:\n\nuath-ar5523\n\nThis file is needed by uath(4) devices." >> ${PREFIX}/firmware/uath-license
	${INSTALL_DATA} ${WRKSRC}/ar5523.bin ${PREFIX}/firmware/uath-ar5523

.include <bsd.port.mk>
