COMMENT =	session manager and a toolchest-like application launcher

V =		1.2
DISTNAME =	emwm-utils-src-${V}
PKGNAME =	emwm-utils-${V}

CATEGORIES =	x11
HOMEPAGE =	https://fastestcode.org/emwm.html

MAINTAINER =	izzy Meyer <izder456@disroot.org>

# MIT
PERMIT_PACKAGE = Yes

SITES =		https://fastestcode.org/dl/
EXTRACT_SUFX =	.tar.xz

WANTLIB += X11 Xinerama Xm Xrandr Xss Xt c

LIB_DEPENDS =	x11/motif

MAKE_FLAGS =	RCDIR=${PREFIX}/lib/X11 \
		CFLAGS="${CFLAGS} -I./Xm -I${X11BASE}/include -I${LOCALBASE}/include"

FAKE_FLAGS =	PREFIX=${WRKINST}${PREFIX} \
		APPLRESDIR=${WRKINST}${PREFIX}/lib/X11/app-defaults \
		MANDIR=${WRKINST}${PREFIX}/man \
		RCDIR=${WRKINST}${PREFIX}/lib/X11

NO_TEST =	Yes

.include <bsd.port.mk>
