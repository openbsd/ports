COMMENT =	graphical manual page viewer using mandoc
CATEGORIES =	sysutils x11

GH_ACCOUNT =	zigalenarcic
GH_PROJECT =	mangl
GH_TAGNAME =	v1.1.0

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += GL c freetype glfw m util z

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS =	graphics/glfw

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	mandoc/configure

USE_GMAKE =	Yes
ALL_TARGET =	mangl
MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS} -std=c99 -I."

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mangl ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mangl.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
