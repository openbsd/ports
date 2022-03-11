COMMENT =	contextual menu for X11

GH_ACCOUNT =	phillbush
GH_PROJECT =	xmenu
GH_TAGNAME =	v4.5.4

CATEGORIES =	x11

MAINTAINER =	Guy Godfroy <guy.godfroy@gugod.fr>

HOMEPAGE =	https://github.com/phillbush/xmenu

# MIT
PERMIT_PACKAGE =Yes

COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

LIB_DEPENDS =	graphics/imlib2

WANTLIB += Imlib2 X11 Xft Xinerama c fontconfig

MAKE_FLAGS =	PREFIX=${PREFIX} \
		FREETYPEINC=${X11BASE}/include/freetype2 \
		MANPREFIX=${PREFIX}/man

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xmenu
	${INSTALL_DATA} ${WRKSRC}/xmenu.sh ${PREFIX}/share/examples/xmenu/

.include <bsd.port.mk>
