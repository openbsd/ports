COMMENT =		drop-in replacement for the wlroots scene API

V =			0.5
SCENEFX_LIBV =		0.5

DIST_TUPLE=		github wlrfx scenefx ${V} .

CATEGORIES =		wayland

SHARED_LIBS +=		scenefx-${SCENEFX_LIBV} 0.0 # 0.5

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += EGL GLESv2 drm gbm m lcms2 pixman-1 wayland-server

COMPILER =		base-clang ports-gcc

MODULES =		devel/meson wayland/wlroots

MODWLROOTS_VERSION =	0.20

BUILD_DEPENDS =		wayland/wayland-protocols

LIB_DEPENDS =		wayland/wayland

SUBST_VARS +=		SCENEFX_LIBV

.include <bsd.port.mk>

