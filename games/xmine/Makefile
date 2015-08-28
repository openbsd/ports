# $OpenBSD: Makefile,v 1.32 2015/08/28 14:22:14 naddy Exp $

COMMENT=	Athena port of xminesweeper

DISTNAME=	xmine-1.0.3-Xaw
PKGNAME=	xmine-1.0.3
REVISION =	4
CATEGORIES=	games

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM Xau Xdmcp X11 Xext Xmu Xpm Xt c pthread-stubs xcb Xaw3d

LIB_DEPENDS=    x11/Xaw3d

CONFIGURE_STYLE=imake
NO_TEST=	Yes

.include <bsd.port.mk>
