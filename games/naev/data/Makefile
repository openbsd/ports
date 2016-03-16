# $OpenBSD: Makefile,v 1.7 2016/03/16 16:46:32 naddy Exp $

COMMENT = 	naev game data

DISTNAME =	ndata-${VERSION}
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
