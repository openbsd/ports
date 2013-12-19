# $OpenBSD: Makefile,v 1.5 2013/12/19 15:13:13 kirby Exp $

# useless without naev, which can only be built on shared lib arches
# due to dependency on lua. saves a useless 250MB package on !shared arch.
SHARED_ONLY =	Yes

COMMENT = 	naev game data

DISTNAME =	ndata-${VERSION}
PKGNAME = 	naev-data-${VERSION}

EXTRACT_SUFX = 	#
EXTRACT_ONLY = 	#

NO_BUILD = 	Yes
PKG_ARCH = 	*
NO_TEST = 	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/naev
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTNAME} ${PREFIX}/share/naev/ndata

.include <bsd.port.mk>
