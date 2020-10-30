# $OpenBSD: Makefile,v 1.5 2020/10/30 18:21:16 jasper Exp $

COMMENT =		simple X hotkey daemon

GH_ACCOUNT =		baskerville
GH_PROJECT =		sxhkd
GH_TAGNAME =		0.6.2
EVISION =		0

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

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
