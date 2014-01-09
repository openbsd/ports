# $OpenBSD: Makefile,v 1.3 2014/01/09 22:48:25 sthen Exp $

FW_DRIVER=	urtwn
FW_VER=		1.1
DISTNAME=	urtwn-1.1p0
REVISION=	2

WRKDIST=	${WRKDIR}
EXTRACT_SUFX=	.tgz

do-install:
	${INSTALL_DATA} ${WRKSRC}/urtwn-license ${PREFIX}/firmware/urtwn-license
	${INSTALL_DATA} ${WRKSRC}/urtwn-rtl8192cfwT ${PREFIX}/firmware/urtwn-rtl8192cfwT
	${INSTALL_DATA} ${WRKSRC}/urtwn-rtl8192cfwU ${PREFIX}/firmware/urtwn-rtl8192cfwU
	${INSTALL_DATA} ${WRKSRC}/urtwn-rtl8723fw ${PREFIX}/firmware/urtwn-rtl8723fw

.include <bsd.port.mk>
