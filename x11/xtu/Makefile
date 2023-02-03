COMMENT=	configurable analog clock for X11
DISTNAME=	xtu-1.3
REVISION=	4
CATEGORIES=	x11 sysutils

# BSD license
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://distfiles.sigtrap.nl/

WANTLIB=	X11 Xext Xpm c
CONFIGURE_STYLE=imake
NO_TEST=	Yes

WANTLIB+=	Xpm

MAKE_FLAGS+=	CC=${CC} CDEBUGFLAGS= \
		CFLAGS="-DUSE_XPM -DNeedFunctionProtoTypes ${CFLAGS} \
		    -I${X11BASE}/include"

.include <bsd.port.mk>
