# $OpenBSD: Makefile,v 1.1.1.1 2016/03/01 15:19:10 jasper Exp $

COMMENT =			programming font designed with functionality in mind

GH_ACCOUNT =			belluzj
GH_PROJECT =			fantasque-sans
GH_TAGNAME =			v1.7.0

CATEGORIES =			fonts

MAINTAINER =			Jasper Lievisse Adriaanses <jasper@openbsd.org>

# SIL Open Font License
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =			graphics/ttfautohint \
				print/fontforge

USE_GMAKE =			Yes
NO_TEST =			Yes

FONTDIR =			${PREFIX}/share/fonts/fantasque-sans

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTDIR}

.include <bsd.port.mk>
