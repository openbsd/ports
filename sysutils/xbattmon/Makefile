# $OpenBSD: Makefile,v 1.2 2019/07/12 20:49:54 sthen Exp $

ONLY_FOR_ARCHS =	${APM_ARCHS}

COMMENT =		simple battery monitor for X

DISTNAME =		xbattmon-1.1

CATEGORIES =		sysutils x11

HOMEPAGE =		https://git.2f30.org/xbattmon

# ISC
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://dl.2f30.org/releases/

WANTLIB =		X11 c

CONFIGURE_STYLE =	simple

MAKE_FLAGS = 		CFLAGS="${CFLAGS} -I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"
FAKE_FLAGS =		PREFIX="${PREFIX}"

NO_TEST =		Yes

.include <bsd.port.mk>
