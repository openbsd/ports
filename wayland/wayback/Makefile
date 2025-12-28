COMMENT =	X11 compat layer for running full X11 desktop environments

V =		0.3
DISTNAME =	wayback-${V}
CATEGORIES =	wayland

SITES =		${HOMEPAGE}/wayback/-/archive/${V}/

HOMEPAGE =	https://gitlab.freedesktop.org/wayback

# MIT
PERMIT_PACKAGE = Yes

MODULES =	devel/meson wayland/wlroots

WANTLIB +=	wayland-client wayland-server xkbcommon c

BUILD_DEPENDS = \
		textproc/scdoc \
		wayland/wayland \
		wayland/wayland-protocols

RUN_DEPENDS = \
		wayland/xwayland

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
