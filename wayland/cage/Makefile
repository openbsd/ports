COMMENT =	Wayland kiosk

V =		0.3.0
DISTNAME =	cage-${V}
CATEGORIES =	wayland
HOMEPAGE =	https://www.hjdskes.nl/projects/cage/

SITES =		https://github.com/cage-kiosk/cage/releases/download/v${V}/

# MIT
PERMIT_PACKAGE =	yes

# C11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =	devel/meson wayland/wlroots
MODWLROOTS_VERSION =	0.20

WANTLIB =	c xkbcommon wayland-server

BUILD_DEPENDS =	textproc/scdoc \
		wayland/wayland-protocols

.include <bsd.port.mk>
