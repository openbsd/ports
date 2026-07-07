COMMENT =	manage outputs in a Wayland compositor

V =		0.5.0
DISTNAME =	wlr-randr-${V}

CATEGORIES =	wayland

# MIT
PERMIT_PACKAGE = Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

HOMEPAGE =	https://gitlab.freedesktop.org/emersion/wlr-randr/
SITES =		https://gitlab.freedesktop.org/emersion/wlr-randr/-/releases/v${V}/downloads/

MODULES =	devel/meson

LIB_DEPENDS =	wayland/wayland

WANTLIB +=	c m wayland-client

DEBUG_PACKAGES=	${BUILD_PACKAGES}

NO_TEST =	Yes

.include <bsd.port.mk>
