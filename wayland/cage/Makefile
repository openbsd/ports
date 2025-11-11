COMMENT =	Wayland kiosk

V =		0.2.1
DISTNAME =	cage-${V}
CATEGORIES =	wayland
HOMEPAGE =	https://www.hjdskes.nl/projects/cage/

SITES =		https://github.com/cage-kiosk/cage/releases/download/v${V}/

# MIT
PERMIT_PACKAGE =	yes

MODULES =	devel/meson wayland/wlroots

WANTLIB =	c xkbcommon wayland-server

BUILD_DEPENDS =	textproc/scdoc \
		wayland/wayland-protocols

.include <bsd.port.mk>
