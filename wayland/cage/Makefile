COMMENT =	Wayland kiosk

DISTNAME =	cage-0.2.0pl20250702
CATEGORIES =	wayland
HOMEPAGE =	https://www.hjdskes.nl/projects/cage/

GH_ACCOUNT =	cage-kiosk
GH_PROJECT =	cage
GH_COMMIT =	2e593fe5a8a2186a558ceb414674775e4ba5d2b1

# MIT
PERMIT_PACKAGE =	yes

MODULES =	devel/meson wayland/wlroots

WANTLIB =	c xkbcommon wayland-server

BUILD_DEPENDS =	textproc/scdoc \
		wayland/wayland-protocols

.include <bsd.port.mk>
