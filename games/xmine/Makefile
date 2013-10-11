# $OpenBSD: Makefile,v 1.31 2013/10/11 21:20:55 naddy Exp $

COMMENT=	Athena port of xminesweeper

DISTNAME=	xmine-1.0.3-Xaw
PKGNAME=	xmine-1.0.3
REVISION =	3
CATEGORIES=	games

MAINTAINER=	Paul Janzen <pjanzen@openbsd.org>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM Xau Xdmcp X11 Xext Xmu Xpm Xt c pthread-stubs xcb Xaw3d

LIB_DEPENDS=    x11/Xaw3d

CONFIGURE_STYLE=imake
NO_TEST=	Yes

.include <bsd.port.mk>
