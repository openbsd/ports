# $OpenBSD: Makefile,v 1.24 2013/03/11 11:41:24 espie Exp $

COMMENT=	promiscuous mode interface detector

PKGNAME=	antisniff-1.1.2
CATEGORIES=	security

DISTNAME=	anti_sniff_researchv1-1-2

PERMIT_PACKAGE_CDROM=	commercial software
PERMIT_PACKAGE_FTP=	commercial software
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c kvm pcap

MASTER_SITES=	${MASTER_SITE_BACKUP}

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
