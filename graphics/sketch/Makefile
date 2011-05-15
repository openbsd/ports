# $OpenBSD: Makefile,v 1.1.1.1 2011/05/15 18:34:20 landry Exp $

COMMENT =		3D scene description translator for TeX

DISTNAME =		sketch-0.3.2
EXTRACT_SUFX =		.tgz

CATEGORIES =		graphics

HOMEPAGE =		http://www.frontiernet.net/~eugene.ressler/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c m

MASTER_SITES =		${HOMEPAGE}

MAKE_FILE =		makefile
USE_GMAKE =		Yes
NO_REGRESS =		Yes
ALL_TARGET =

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sketch ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sketch
	${INSTALL_DATA} ${WRKSRC}/Data/* ${PREFIX}/share/examples/sketch


.include <bsd.port.mk>
