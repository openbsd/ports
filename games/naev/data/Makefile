# $OpenBSD: Makefile,v 1.2 2012/01/26 11:27:56 nigel Exp $

COMMENT = 	naev game data

DISTNAME =	ndata-${VERSION}
PKGNAME = 	naev-data-${VERSION}

EXTRACT_SUFX = 	#

NO_BUILD = 	Yes
PKG_ARCH = 	*

do-extract:
	${INSTALL_DATA_DIR} ${WRKSRC}
	cp ${FULLDISTDIR}/${DISTNAME} ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/naev
	${INSTALL_DATA} ${WRKSRC}/${DISTNAME} ${PREFIX}/share/naev/ndata

.include <bsd.port.mk>
