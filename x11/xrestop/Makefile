# $OpenBSD: Makefile,v 1.16 2019/07/12 20:51:30 sthen Exp $

COMMENT=	top-like X server resources usage display tool
DISTNAME=	xrestop-0.4
REVISION=	3

CATEGORIES=	x11

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/xrestop

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://projects.o-hand.com/sources/xrestop/

WANTLIB=	XRes Xext X11 Xau Xdmcp curses c xcb

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS=-I${X11BASE}/include

.include <bsd.port.mk>
