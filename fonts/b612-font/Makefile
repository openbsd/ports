# $OpenBSD: Makefile,v 1.1.1.1 2019/07/18 08:08:50 kmos Exp $

PKG_ARCH =		*

COMMENT =		highly legible font designed for aircraft cockpits

GH_ACCOUNT =		polarsys
GH_PROJECT =		b612
GH_TAGNAME =		1.008
PKGNAME =		b612-font-${GH_TAGNAME}

CATEGORIES =		fonts

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

HOMEPAGE =		https://b612-font.com/

# OFL 1.1
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/b612
	${INSTALL_DATA} ${WRKSRC}/fonts/ttf/*.ttf \
		${PREFIX}/share/fonts/b612

.include <bsd.port.mk>
