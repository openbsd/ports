# $OpenBSD: Makefile,v 1.21 2004/12/27 13:28:33 alek Exp $

COMMENT=	"promiscuous mode interface detector"

PKGNAME=	antisniff-1.1.2
CATEGORIES=	security

DISTNAME=	anti_sniff_researchv1-1-2

PERMIT_PACKAGE_CDROM=	"commercial software"
PERMIT_PACKAGE_FTP=	"commercial software"
PERMIT_DISTFILES_CDROM=	"commercial software"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c kvm pcap

MASTER_SITES=	${MASTER_SITE_BACKUP}

WRKDIST=	${WRKDIR}/anti_sniff

ALL_TARGET=	OpenBSD-all

MAKE_FLAGS=	CC="${CC}"

NO_REGRESS=	Yes

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/anti_sniffer \
			${PREFIX}/bin/antisniff
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/antisniff
		${INSTALL_DATA} ${WRKSRC}/ANTI_SNIFFER_DOCS \
			${PREFIX}/share/doc/antisniff
		${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/antisniff

.include <bsd.port.mk>
