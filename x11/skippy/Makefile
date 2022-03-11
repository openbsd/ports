COMMENT=		full-screen X11 task-switcher like Apple's Expose

DISTNAME=		skippy-0.5.0
REVISION=		9
CATEGORIES=		x11

# X11
PERMIT_PACKAGE=		Yes

WANTLIB+= Imlib2 X11 Xext Xft Xinerama c m

MASTER_SITES=		https://spacehopper.org/mirrors/
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		graphics/imlib2

FAKE_FLAGS+=		PREFIX="${PREFIX}"

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/skippy
	${INSTALL_DATA} ${WRKSRC}/skippyrc-default \
	    ${PREFIX}/share/examples/skippy

.include <bsd.port.mk>
