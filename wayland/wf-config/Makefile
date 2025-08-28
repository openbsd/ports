COMMENT =	configuration files library for wayfire

V =		0.10.0
GH_ACCOUNT =	WayfireWM
GH_PROJECT =	wf-config
GH_TAGNAME =	v${V}
DISTNAME =	wf-config-${V}

SHARED_LIBS +=	wf-config 0.2 # 0.0
CATEGORIES =	wayland

MAINTAINER =	Landry Breuil <landry@openbsd.org>
# MIT
PERMIT_PACKAGE =Yes


# C++17
COMPILER =	base-clang ports-gcc

MODULES =	devel/meson

CONFIGURE_ARGS =-Dtests=disabled

# include/wayfire/config/types.hpp needs glm/vec4.hpp
RUN_DEPENDS +=	graphics/glm
BUILD_DEPENDS =	wayland/libinput-openbsd \
		wayland/wayland \
		wayland/wayland-protocols \
		devel/cmake/core \
		graphics/glm
LIB_DEPENDS =	textproc/libxml \
		wayland/libevdev-openbsd>=20231111

WANTLIB +=	${COMPILER_LIBCXX} evdev m xml2

.include <bsd.port.mk>
