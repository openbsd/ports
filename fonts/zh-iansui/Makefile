COMMENT =		Chinese truetype font derived from Klee One

V =			1.000
PKGNAME =		zh-iansui-${V}

GH_ACCOUNT =		ButTaiwan
GH_PROJECT =		iansui
GH_TAGNAME =		v${V}

CATEGORIES =		fonts chinese x11

HOMEPAGE =		https://github.com/ButTaiwan/iansui

MAINTAINER =		Kevin Lo <kevlo@openbsd.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/iansui
DOCDIR =		${PREFIX}/share/doc/iansui

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/Iansui-Regular.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/{README.md,OFL.txt} ${DOCDIR}

.include <bsd.port.mk>
