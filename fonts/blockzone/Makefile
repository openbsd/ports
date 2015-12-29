# $OpenBSD: Makefile,v 1.3 2015/12/29 19:49:40 jasper Exp $

COMMENT =	faithful, pixel-perfect recreation of the original DOS font


CATEGORIES =	fonts

HOMEPAGE =	https://github.com/ansilove/blockzone

MAINTAINER =	Frederic Cambus <fcambus@users.sourceforge.net>

# SIL Open Font License 1.1
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =	ansilove
GH_PROJECT =	BlockZone
GH_TAGNAME =	1.004

PKG_ARCH =	*
NO_BUILD =	Yes
NO_TEST =	Yes

FONTDIR =	${PREFIX}/share/fonts/BlockZone
DOCDIR =	${PREFIX}/share/doc/blockzone

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/BlockZone.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${DOCDIR}

.include <bsd.port.mk>
