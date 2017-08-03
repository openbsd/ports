# $OpenBSD: Makefile,v 1.6 2017/08/03 15:05:07 sthen Exp $

BROKEN-macppc =			fontforge doesnt validate fonts
BROKEN-sparc64 =		fontforge doesnt validate fonts
BROKEN-i386 =			clang-built fontforge hangs, burning cpu - processes stay running even after dpb kills the build

COMMENT =			programming font designed with functionality in mind

GH_ACCOUNT =			belluzj
GH_PROJECT =			fantasque-sans
GH_TAGNAME =			v1.7.1

CATEGORIES =			fonts

MAINTAINER =			Jasper Lievisse Adriaanse <jasper@openbsd.org>

# SIL Open Font License
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =			graphics/ttfautohint \
				print/fontforge \
				shells/bash

USE_GMAKE =			Yes
NO_TEST =			Yes

FONTDIR =			${PREFIX}/share/fonts/fantasque-sans

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTDIR}

.include <bsd.port.mk>
