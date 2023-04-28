COMMENT =		tiny monitor calibration loader for XFree86 or X.org

GH_ACCOUNT =		OpenICC
GH_PROJECT =		xcalib
GH_TAGNAME =		0.10

CATEGORIES =		x11

# License: GPLv2 or later
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xext Xrandr Xxf86vm c m
NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xcalib ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xcalib
	${INSTALL_DATA} ${WRKSRC}/*.icc ${PREFIX}/share/examples/xcalib/
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/examples/xcalib/
	${INSTALL_MAN} ${WRKSRC}/xcalib.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
