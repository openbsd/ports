COMMENT =	simple X11 file manager

GH_ACCOUNT =	phillbush
GH_PROJECT =	xfiles
GH_TAGNAME =	v1.1.1

CATEGORIES =	x11 sysutils

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	X11 Xcursor Xext Xft Xpm Xrender c fontconfig pthread

MAKE_FLAGS =	MANPREFIX=${PREFIX}/man \
		PREFIX=${PREFIX}

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xfiles
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/xfiles

.include <bsd.port.mk>
