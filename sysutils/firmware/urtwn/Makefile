# $OpenBSD: Makefile,v 1.1.1.1 2011/06/09 17:08:14 sthen Exp $

FW_DRIVER=	urtwn
FW_VER=		1.1
REVISION=	1

do-install:
	${INSTALL_DATA} ${WRKSRC}/urtwn-license ${PREFIX}/firmware/urtwn-license
	${INSTALL_DATA} ${WRKSRC}/urtwn-rtl8192cfwT ${PREFIX}/firmware/urtwn-rtl8192cfwT
	${INSTALL_DATA} ${WRKSRC}/urtwn-rtl8192cfwU ${PREFIX}/firmware/urtwn-rtl8192cfwU
	${INSTALL_DATA} ${WRKSRC}/urtwn-rtl8723fw ${PREFIX}/firmware/urtwn-rtl8723fw

.include <bsd.port.mk>
