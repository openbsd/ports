# $OpenBSD: Makefile,v 1.15 2007/09/15 22:36:58 merdely Exp $

COMMENT=	determine remote OS using simple tcp packets

DISTNAME=	queso-980922
CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_BACKUP}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

CONFIGURE_STYLE=gnu

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/queso
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/queso
	${INSTALL_DATA} ${WRKSRC}/queso.conf ${PREFIX}/lib/queso/queso.conf.sample
	${INSTALL_MAN} ${FILESDIR}/queso.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/queso ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/Documentation.txt ${PREFIX}/share/doc/queso

.include <bsd.port.mk>
