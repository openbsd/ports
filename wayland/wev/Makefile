COMMENT =	utility to show Wayland events

V =		1.0.0
DISTNAME =	wev-${V}

CATEGORIES =	wayland
HOMEPAGE =	https://git.sr.ht/~sircmpwn/wev

SITES =		https://git.sr.ht/~sircmpwn/wev/
DISTFILES =	wev-{archive/}${V}${EXTRACT_SUFX}

WANTLIB =	epoll-shim ffi wayland-client xkbcommon c

# MIT
PERMIT_PACKAGE = Yes

USE_GMAKE =	Yes

BUILD_DEPENDS = textproc/scdoc \
		wayland/wayland-protocols

MAKE_FLAGS =	PREFIX=${TRUEPREFIX} \
		MANDIR=${TRUEPREFIX}/man

LIB_DEPENDS =	x11/xkbcommon \
		wayland/wayland

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
