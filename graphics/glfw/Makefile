COMMENT =	open source, multi-platform library for creating windows

V =		3.4
DISTNAME =	glfw-${V}
CATEGORIES =	graphics x11
REVISION =	0

SHARED_LIBS +=  glfw                      1.2 # 3.4

HOMEPAGE =	https://www.glfw.org/
MAINTAINER =	Kurt Mosiejczuk <kmos@openbsd.org>

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB +=	epoll-shim m pthread

# dlopen()'d
WANTLIB +=	X11 wayland-client wayland-cursor wayland-egl xkbcommon

SITES =		https://github.com/glfw/glfw/releases/download/${V}/
EXTRACT_SUFX =	.zip

MODULES =	devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DGLFW_BUILD_TESTS=OFF

CFLAGS +=		-I${X11BASE}/include

LIB_DEPENDS =	wayland/libinput-openbsd \
		wayland/wayland \
		x11/xkbcommon


NO_TEST =	Yes

.include <bsd.port.mk>
