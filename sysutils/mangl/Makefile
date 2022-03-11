COMMENT =	graphical manual page viewer using mandoc
CATEGORIES =	sysutils x11

GH_ACCOUNT =	zigalenarcic
GH_PROJECT =	mangl
GH_TAGNAME =	v1.0.3

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += GL c freetype glut m util z

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS =	graphics/freeglut

CONFIGURE_STYLE =	simple

USE_GMAKE =	Yes
ALL_TARGET =	mangl
MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS} -std=c99"

NO_TEST =	Yes

do-gen:
	chmod +x ${WRKSRC}/configure

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mangl ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mangl.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
