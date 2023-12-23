COMMENT =	manage outputs in a Wayland compositor

V=0.3.1
DISTNAME =	wlr-randr-${V}

CATEGORIES =	wayland

# MIT
PERMIT_PACKAGE = Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

HOMEPAGE =	https://sr.ht/~emersion/wlr-randr/
SITES =		https://git.sr.ht/~emersion/wlr-randr/refs/download/v${V}/

MODULES =	devel/meson

LIB_DEPENDS =	wayland/wayland

WANTLIB +=	c m wayland-client

DEBUG_PACKAGES =${BUILD_PACKAGES}

.include <bsd.port.mk>
