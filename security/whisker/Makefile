# Makefile for:		whisker
# Version required:	1.2.0
# Date created:		Halloween 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.2 2000/01/06 18:56:57 dugsong Exp $

PKGNAME=	whisker-1.3.0a

CATEGORIES=	security

MAINTAINER=	dugsong@monkey.org

MASTER_SITES=	http://www.wiretrip.net/rfp/bins/whisker/

DISTNAME=	whisker

WRKSRC=		${WRKDIR}/v1.3

NO_CONFIGURE=	yes

do-build:
		(cd ${WRKSRC}; sed "s%y0y0y0%${PREFIX}%g" whisker.pl > whisker)

do-install:
		${INSTALL_SCRIPT} ${WRKSRC}/whisker ${PREFIX}/bin
		${INSTALL_DATA_DIR} ${PREFIX}/share/whisker
		${INSTALL_DATA} ${WRKSRC}/*.db ${PREFIX}/share/whisker
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/whisker
		${INSTALL_DATA} ${WRKSRC}/whisker.txt ${PREFIX}/share/doc/whisker

.include <bsd.port.mk>
