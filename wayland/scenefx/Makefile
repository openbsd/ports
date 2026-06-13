COMMENT =		drop-in replacement for the wlroots scene API

V =			0.4.1
SCENEFX_LIBV =		0.4
REVISION =		0

DIST_TUPLE=		github wlrfx scenefx ${V} .

CATEGORIES =		wayland

SHARED_LIBS +=		scenefx-${SCENEFX_LIBV} 0.0 # 0.4

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

MODULES =		devel/meson wayland/wlroots

BUILD_DEPENDS =		wayland/wayland-protocols

LIB_DEPENDS =		wayland/wayland

SUBST_VARS +=		SCENEFX_LIBV

WANTLIB += EGL GLESv2 drm gbm m pixman-1 wayland-server

.include <bsd.port.mk>

