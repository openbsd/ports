COMMENT =	Wayland utils

DISTNAME =	wayland-utils-1.0.0

CATEGORIES =	wayland

HOMEPAGE =	https://wayland.freedesktop.org/

WANTLIB += c wayland-client

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://wayland.freedesktop.org/releases/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/meson

BUILD_DEPENDS =		wayland/wayland \
			wayland/wayland-protocols
LIB_DEPENDS =		wayland/wayland

.include <bsd.port.mk>
