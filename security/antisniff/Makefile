# Makefile for:		antisniff
# Version required:	1.0
# Date created:		27 Oct 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.3 2000/02/15 16:42:13 turan Exp $

BROKEN=		no checksum, version has changed, patches do not apply

PKGNAME=	antisniff-1.0
DISTNAME=	anti_sniff_researchv1

CATEGORIES=	security

MASTER_SITES=	http://www.l0pht.com/antisniff/dist/
NEED_VERSION=	1.191

MAINTAINER=	dugsong@monkey.org

WRKDIST=	${WRKDIR}/anti_sniff

NO_CONFIGURE=	yes

ALL_TARGET=	OpenBSD-all

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/anti_sniffer ${PREFIX}/bin/antisniff
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/antisniff
		${INSTALL_DATA} ${WRKSRC}/ANTI_SNIFFER_DOCS ${PREFIX}/share/doc/antisniff
		${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/antisniff

.include <bsd.port.mk>
