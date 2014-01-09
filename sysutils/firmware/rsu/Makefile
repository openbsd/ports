# $OpenBSD: Makefile,v 1.6 2014/01/09 22:56:18 sthen Exp $

FW_DRIVER=	rsu
FW_VER=		1.2
REVISION=	0

WRKDIST=	${WRKDIR}
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/rsu-license ${PREFIX}/firmware/rsu-license
	${INSTALL_DATA} ${WRKSRC}/rsu-rtl8712fw ${PREFIX}/firmware/rsu-rtl8712fw

.include <bsd.port.mk>
