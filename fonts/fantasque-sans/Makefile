# $OpenBSD: Makefile,v 1.10 2018/03/04 08:51:16 jasper Exp $

BROKEN-macppc =			fontforge doesnt validate fonts
BROKEN-sparc64 =		fontforge doesnt validate fonts

COMMENT =			programming font designed with functionality in mind

V =				1.7.1
DISTNAME =			fanstasque-sans-$V
DISTFILES =			${DISTNAME}{FantasqueSansMono}.tar.gz
REVISION =			0

CATEGORIES =			fonts

MAINTAINER =			Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =			https://fontlibrary.org/en/font/fantasque-sans-mono

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =			https://github.com/belluzj/fantasque-sans/releases/download/v$V/

NO_BUILD =			Yes
NO_TEST =			Yes

FONTDIR =			${PREFIX}/share/fonts/fantasque-sans

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTDIR}

.include <bsd.port.mk>
