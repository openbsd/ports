# $OpenBSD: Makefile,v 1.3 2019/09/01 14:01:23 jasper Exp $

COMMENT =		binary space partitioning window manager

GH_PROJECT =		bspwm
GH_ACCOUNT =		baskerville
GH_TAGNAME =		0.9.9

CATEGORIES =		x11

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c m xcb xcb-ewmh xcb-icccm xcb-keysyms xcb-randr xcb-util
WANTLIB += xcb-xinerama xcb-shape

USE_GMAKE =		Yes

CFLAGS +=		-I${X11BASE}/include
MAKE_ENV +=		LDFLAGS=-L${X11BASE}/lib \
			CC=${CC}

FAKE_FLAGS =		PREFIX=${TRUEPREFIX} \
			EGPREFIX=${TRUEPREFIX}/share/examples/bspwm \
			MANPREFIX=${TRUEPREFIX}/man

RUN_DEPENDS =		x11/sxhkd

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/examples/bspwmrc

.include <bsd.port.mk>
