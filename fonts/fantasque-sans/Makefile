# $OpenBSD: Makefile,v 1.3 2016/03/02 20:31:00 kili Exp $

COMMENT =			programming font designed with functionality in mind

GH_ACCOUNT =			belluzj
GH_PROJECT =			fantasque-sans
GH_TAGNAME =			v1.7.0
REVISION =			0

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
