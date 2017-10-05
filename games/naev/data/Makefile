# $OpenBSD: Makefile,v 1.8 2017/10/05 11:40:40 kirby Exp $

COMMENT = 	naev game data

DISTNAME =	naev-${VERSION}-ndata
PKGNAME = 	naev-data-${VERSION}

EXTRACT_SUFX = 	.zip
EXTRACT_ONLY = 	#

NO_BUILD = 	Yes
PKG_ARCH = 	*
NO_TEST = 	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/naev
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
		${PREFIX}/share/naev/ndata

.include <bsd.port.mk>
