# $OpenBSD: Makefile,v 1.2 2015/12/28 20:01:47 jasper Exp $

COMMENT =	faithful, pixel-perfect recreation of the original DOS font

DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}

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
