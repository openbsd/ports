# $OpenBSD: Makefile,v 1.16 2002/10/28 17:35:01 naddy Exp $

COMMENT=	"promiscuous mode interface detector"

PKGNAME=	antisniff-1.1.2
CATEGORIES=	security

MASTER_SITES=	http://www.securitysoftwaretech.com/antisniff/dist/
HOMEPAGE=	http://www.securitysoftwaretech.com/antisniff/

DISTNAME=	anti_sniff_researchv1-1-2

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	"commercial software"
PERMIT_PACKAGE_FTP=	"commercial software"
PERMIT_DISTFILES_CDROM=	"commercial software"
PERMIT_DISTFILES_FTP=	Yes

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
