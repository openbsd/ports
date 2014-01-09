# $OpenBSD: Makefile,v 1.5 2014/01/09 22:48:24 sthen Exp $

FW_DRIVER=	athn
FW_VER=		1.1
REVISION=	1

EXTRACT_SUFX=	.tgz
WRKDIST=	${WRKDIR}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/LICENCE.atheros_firmware ${PREFIX}/firmware/athn-license
	echo "\nThe following files are under this license:\n\nathn-7010 athn-7010-11 athn-9271\n\nThese files are needed by various models of athn(4) devices." >> ${PREFIX}/firmware/athn-license
	${INSTALL_DATA} ${WRKSRC}/ar7010.fw ${PREFIX}/firmware/athn-ar7010
	${INSTALL_DATA} ${WRKSRC}/ar7010_1_1.fw ${PREFIX}/firmware/athn-ar7010-11
	${INSTALL_DATA} ${WRKSRC}/ar9271.fw ${PREFIX}/firmware/athn-ar9271

.include <bsd.port.mk>
