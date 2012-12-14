# $OpenBSD: Makefile,v 1.3 2012/12/14 10:26:00 sthen Exp $

# useless without naev, which can only be built on shared lib arches
# due to dependency on lua. saves a useless 250MB package on !shared arch.
SHARED_ONLY =	Yes

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
