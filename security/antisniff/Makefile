# Makefile for:		antisniff
# Version required:	1.0
# Date created:		27 Oct 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.12 2001/05/06 03:45:36 lebel Exp $

COMMENT=	"promiscuous mode interface detector"

PKGNAME=	antisniff-1.1

CATEGORIES=	security
NEED_VERSION=	1.402

MASTER_SITES=	http://www.l0pht.com/antisniff/dist/

DISTNAME=	anti_sniff_researchv1-1

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	"commercial software"
PERMIT_PACKAGE_FTP=	"commercial software"
PERMIT_DISTFILES_CDROM=	"commercial software"
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/anti_sniff

ALL_TARGET=	OpenBSD-all

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/anti_sniffer \
			${PREFIX}/bin/antisniff
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/antisniff
		${INSTALL_DATA} ${WRKSRC}/ANTI_SNIFFER_DOCS \
			${PREFIX}/share/doc/antisniff
		${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/antisniff

.include <bsd.port.mk>
