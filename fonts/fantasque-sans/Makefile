COMMENT =			programming font designed with functionality in mind

V =				1.8.0
DISTNAME =			fantasque-sans-$V
DISTFILES =			${DISTNAME}{FantasqueSansMono-Normal}.tar.gz
REVISION =			1

CATEGORIES =			fonts

HOMEPAGE =			https://fontlibrary.org/en/font/fantasque-sans-mono

# SIL OFL 1.1
PERMIT_PACKAGE =		Yes

SITES =	https://github.com/belluzj/fantasque-sans/releases/download/v$V/

NO_BUILD =			Yes
NO_TEST =			Yes

PKG_ARCH =			*

FONTDIR =			${PREFIX}/share/fonts/fantasque-sans

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/OTF/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/TTF/*.ttf ${FONTDIR}

.include <bsd.port.mk>
