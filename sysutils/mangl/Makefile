COMMENT =	graphical manual page viewer using mandoc
CATEGORIES =	sysutils x11

GH_ACCOUNT =	zigalenarcic
GH_PROJECT =	mangl
GH_TAGNAME =	v1.1.2

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += GL c freetype glfw m util z

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS =	graphics/glfw

CONFIGURE_STYLE =	simple

USE_GMAKE =	Yes
ALL_TARGET =	mangl
MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

NO_TEST =	Yes

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
