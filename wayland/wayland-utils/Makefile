COMMENT =	Wayland utils

V = 		1.2.0
DISTNAME =	wayland-utils-${V}

CATEGORIES =	wayland

HOMEPAGE =	https://wayland.freedesktop.org/

WANTLIB += c wayland-client

# MIT
PERMIT_PACKAGE =	Yes

SITES =			https://gitlab.freedesktop.org/wayland/wayland-utils/-/releases/${V}/downloads/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/meson

BUILD_DEPENDS =		wayland/wayland \
			wayland/wayland-protocols
LIB_DEPENDS =		wayland/wayland

.include <bsd.port.mk>
