# Makefile for:		whisker
# Version required:	1.2.0
# Date created:		Halloween 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.1.1.1 1999/11/01 16:10:57 dugsong Exp $

PKGNAME=	whisker-1.2.0

DISTNAME=	whisker

CATEGORIES=	security

MASTER_SITES=	http://www.wiretrip.net/rfp/bins/whisker/

MAINTAINER=	dugsong@monkey.org

NO_WRKSUBDIR=	yes

NO_CONFIGURE=	yes

do-build:
		(cd ${WRKSRC}; sed "s%y0y0y0%${PREFIX}%g" whisker.pl > whisker)

do-install:
		${INSTALL_SCRIPT} ${WRKSRC}/whisker ${PREFIX}/bin
		${INSTALL_DATA_DIR} ${PREFIX}/lib/whisker
		${INSTALL_DATA} ${WRKSRC}/*.db ${PREFIX}/lib/whisker
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/whisker
		${INSTALL_DATA} ${WRKSRC}/whisker.txt ${PREFIX}/share/doc/whisker

.include <bsd.port.mk>
