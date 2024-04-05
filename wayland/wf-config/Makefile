COMMENT =	configuration files library for wayfire

V =		0.8.0
DISTNAME =	wf-config-${V}
REVISION =	0

SHARED_LIBS +=	wf-config 0.0 # 0.0
CATEGORIES =	wayland

MAINTAINER =	Landry Breuil <landry@openbsd.org>
# MIT
PERMIT_PACKAGE =Yes

SITES =		https://github.com/WayfireWM/wf-config/releases/download/v${V}/
EXTRACT_SUFX =	.tar.xz

# C++17
COMPILER =	base-clang ports-gcc

MODULES =	devel/meson

CONFIGURE_ARGS =-Dtests=disabled

# include/wayfire/config/types.hpp needs glm/vec4.hpp
RUN_DEPENDS +=	graphics/glm
BUILD_DEPENDS =	wayland/libinput-openbsd \
		wayland/wayland \
		wayland/wayland-protocols\
		devel/cmake \
		graphics/glm
LIB_DEPENDS =	textproc/libxml \
		wayland/libevdev-openbsd>=20231111

WANTLIB +=	${COMPILER_LIBCXX} evdev m xml2

.include <bsd.port.mk>
