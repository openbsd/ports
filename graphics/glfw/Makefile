COMMENT =	open source, multi-platform library for creating windows

V =		3.3.9
DISTNAME =	glfw-${V}
CATEGORIES =	graphics x11

SHARED_LIBS +=  glfw                      1.1 # 3.1

HOMEPAGE =	https://www.glfw.org/
MAINTAINER =	Kurt Mosiejczuk <kmos@openbsd.org>

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB =	X11 m pthread

SITES =		https://github.com/glfw/glfw/releases/download/${V}/
EXTRACT_SUFX =	.zip

MODULES =	devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DGLFW_BUILD_TESTS=OFF

CFLAGS +=		-I${X11BASE}/include

NO_TEST =	Yes

.include <bsd.port.mk>
