COMMENT=	top-like X server resources usage display tool
DISTNAME=	xrestop-0.5

CATEGORIES=	x11

HOMEPAGE=	https://www.freedesktop.org/wiki/Software/xrestop/

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	XRes Xext X11 Xau Xdmcp curses c xcb

MASTER_SITES =	${MASTER_SITE_XORG:=app/}

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS=-I${X11BASE}/include

.include <bsd.port.mk>
