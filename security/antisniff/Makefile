# $OpenBSD: Makefile,v 1.25 2014/08/30 21:54:08 jasper Exp $

COMMENT=	promiscuous mode interface detector

PKGNAME=	antisniff-1.1.2
CATEGORIES=	security

DISTNAME=	anti_sniff_researchv1-1-2

PERMIT_PACKAGE_CDROM=	commercial software
PERMIT_PACKAGE_FTP=	commercial software
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c kvm pcap

WRKDIST=	${WRKDIR}/anti_sniff

ALL_TARGET=	OpenBSD-all

MAKE_FLAGS=	CC="${CC} ${CFLAGS}" DFLAGS=""

NO_TEST=	Yes

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/anti_sniffer \
			${PREFIX}/bin/antisniff
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/antisniff
		${INSTALL_DATA} ${WRKSRC}/ANTI_SNIFFER_DOCS \
			${PREFIX}/share/doc/antisniff
		${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/antisniff

.include <bsd.port.mk>
