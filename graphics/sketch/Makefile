# $OpenBSD: Makefile,v 1.3 2018/08/31 12:31:49 solene Exp $

COMMENT =		3D scene description translator for TeX

DISTNAME =		sketch-0.3.7
EXTRACT_SUFX =		.tgz

CATEGORIES =		graphics

HOMEPAGE =		https://www.frontiernet.net/~eugene.ressler/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m

MASTER_SITES =		${HOMEPAGE}

MAKE_FILE =		makefile
USE_GMAKE =		Yes
NO_TEST =		Yes
ALL_TARGET =

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sketch ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sketch
	${INSTALL_DATA} ${WRKSRC}/Data/* ${PREFIX}/share/examples/sketch


.include <bsd.port.mk>
