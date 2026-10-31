COMMENT =	open source, multi-platform library for creating windows

V =		3.5.1
DISTNAME =	glfw-${V}
CATEGORIES =	graphics x11

SHARED_LIBS +=  glfw                      1.3 # 3.5.1

HOMEPAGE =	https://www.glfw.org/
MAINTAINER =	Kurt Mosiejczuk <kmos@openbsd.org>

# zlib
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB +=	epoll-shim m pthread

# dlopen()'d
WANTLIB +=	X11 wayland-client wayland-cursor wayland-egl xkbcommon

SITES =		https://github.com/glfw/glfw/releases/download/${V}/
SITES.p =	https://kurt.mosiejcz.uk/pub/distfiles/glfw/

EXTRACT_SUFX =	.zip

MODULES =	devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DGLFW_BUILD_EXAMPLES=OFF \
			-DGLFW_BUILD_TESTS=OFF

CFLAGS +=		-I${X11BASE}/include

BUILD_DEPENDS =	wayland/libinput-openbsd
LIB_DEPENDS =	devel/epoll-shim \
		wayland/wayland \
		x11/xkbcommon

PATCHFILES.p =	lwjgl-glfw-part1.diff \
		lwjgl-glfw-part2.diff \
		lwjgl-glfw-part3.diff \
		lwjgl-glfw-part4.diff

NO_TEST =	Yes

.include <bsd.port.mk>
