# $OpenBSD: Makefile,v 1.3 2013/02/05 21:52:40 sthen Exp $

FW_DRIVER=	rsu
FW_VER=		1.2

WRKDIST=	${WRKDIR}
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/rsu-license ${PREFIX}/firmware/rsu-license
	${INSTALL_DATA} ${WRKSRC}/rsu-rtl8712fw ${PREFIX}/firmware/rsu-rtl8712fw

.include <bsd.port.mk>
