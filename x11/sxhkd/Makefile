# $OpenBSD: Makefile,v 1.4 2020/10/28 20:43:02 jasper Exp $

COMMENT =		simple X hotkey daemon

GH_ACCOUNT =		baskerville
GH_PROJECT =		sxhkd
GH_TAGNAME =		0.6.2

CATEGORIES =		x11

# BSD
PERMIT_PACKAGE =	Yes

USE_GMAKE =		Yes

WANTLIB += c xcb xcb-keysyms

CFLAGS +=		-I${X11BASE}/include
MAKE_ENV +=		LDFLAGS=-L${X11BASE}/lib \
			CC=${CC}

FAKE_FLAGS =		PREFIX=${TRUEPREFIX} \
			EGPREFIX=${TRUEPREFIX}/share/examples/sxhkd \
			MANPREFIX=${TRUEPREFIX}/man

NO_TEST =		Yes

.include <bsd.port.mk>
