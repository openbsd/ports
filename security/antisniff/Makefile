# Makefile for:		antisniff
# Version required:	1.0
# Date created:		27 Oct 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.8 2000/04/30 09:20:06 kevlo Exp $

PKGNAME=	antisniff-1.0

CATEGORIES=	security
NEED_VERSION=	1.191

DISTNAME=	anti_sniff_researchv1

MASTER_SITES=	http://www.l0pht.com/antisniff/dist/


MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	"commercial software"
PERMIT_PACKAGE_FTP=	"commercial software"
PERMIT_DISTFILES_CDROM=	"commercial software"
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/anti_sniff

NO_CONFIGURE=	Yes

ALL_TARGET=	OpenBSD-all

FAKE=		Yes

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/anti_sniffer ${PREFIX}/bin/antisniff
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/antisniff
		${INSTALL_DATA} ${WRKSRC}/ANTI_SNIFFER_DOCS ${PREFIX}/share/doc/antisniff
		${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/antisniff

.include <bsd.port.mk>
