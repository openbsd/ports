# $OpenBSD: Makefile,v 1.16 2019/07/12 20:51:30 sthen Exp $

COMMENT=	configurable analog clock for X11
DISTNAME=	xtu-1.3
REVISION=	4
CATEGORIES=	x11 sysutils

# BSD license
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://distfiles.nl/

WANTLIB=	X11 Xext Xpm c
CONFIGURE_STYLE=imake
NO_TEST=	Yes

XTUFLAGS=	"-DUSE_XPM ${CFLAGS} -I${X11BASE}/include"
WANTLIB+=	Xpm

MAKE_FLAGS+=	CC=${CC} CDEBUGFLAGS= \
		CFLAGS="-DUSE_XPM ${CFLAGS} -I${X11BASE}/include"

.include <bsd.port.mk>
