COMMENT =	graphical manual page viewer using mandoc
CATEGORIES =	sysutils x11

GH_ACCOUNT =	zigalenarcic
GH_PROJECT =	mangl
GH_TAGNAME =	v1.1.5

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += GL bz2 c freetype glfw m util z

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS =	graphics/glfw

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_STYLE =	simple

USE_GMAKE =	Yes
ALL_TARGET =	mangl
MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS} -I${LOCALBASE}/include"

NO_TEST =	Yes

.include <bsd.port.mk>
