COMMENT =	Wayland protocols

V =		1.47
DISTNAME =	wayland-protocols-${V}

CATEGORIES =	wayland

HOMEPAGE =	https://wayland.freedesktop.org/

# MIT
PERMIT_PACKAGE =	Yes

SITES =			https://gitlab.freedesktop.org/wayland/wayland-protocols/-/releases/${V}/downloads/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/meson

BUILD_DEPENDS =		wayland/wayland>=1.23.1
RUN_DEPENDS =		wayland/wayland>=1.23.1

.include <bsd.port.mk>
