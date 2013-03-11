# $OpenBSD: Makefile,v 1.4 2013/03/11 11:41:30 espie Exp $

FW_DRIVER=	rsu
FW_VER=		1.2

WRKDIST=	${WRKDIR}
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/rsu-license ${PREFIX}/firmware/rsu-license
	${INSTALL_DATA} ${WRKSRC}/rsu-rtl8712fw ${PREFIX}/firmware/rsu-rtl8712fw

.include <bsd.port.mk>
