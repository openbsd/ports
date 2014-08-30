# $OpenBSD: Makefile,v 1.19 2014/08/30 21:54:08 jasper Exp $

COMMENT=	determine remote OS using simple tcp packets

DISTNAME=	queso-980922
CATEGORIES=	net

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pcap

CONFIGURE_STYLE=gnu

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/queso
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/queso
	${INSTALL_DATA} ${WRKSRC}/queso.conf ${PREFIX}/lib/queso/queso.conf.sample
	${INSTALL_MAN} ${FILESDIR}/queso.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/queso ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/Documentation.txt ${PREFIX}/share/doc/queso

.include <bsd.port.mk>
