COMMENT =	enhanced motif window manager (MWM fork)

V =		1.2
DISTNAME =	emwm-src-${V}
PKGNAME =	emwm-${V}

CATEGORIES =	x11
HOMEPAGE =	https://fastestcode.org/emwm.html

MAINTAINER =	izzy Meyer <izder456@disroot.org>

# LGPL v2.1
PERMIT_PACKAGE = Yes

SITES =		https://fastestcode.org/dl/
EXTRACT_SUFX =	.tar.xz

WANTLIB += X11 Xext Xinerama Xm Xrandr Xt c m

LIB_DEPENDS =	x11/motif

MAKE_FLAGS =	RCDIR=${PREFIX}/lib/X11 \
		CFLAGS="${CFLAGS}"

FAKE_FLAGS =	PREFIX=${WRKINST}${PREFIX} \
		APPLRESDIR=${WRKINST}${PREFIX}/lib/X11/app-defaults \
		MANDIR=${WRKINST}${PREFIX}/man \
		RCDIR=${WRKINST}${PREFIX}/lib/X11

NO_TEST =	Yes

.include <bsd.port.mk>
