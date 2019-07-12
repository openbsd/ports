# $OpenBSD: Makefile,v 1.34 2019/07/12 20:46:27 sthen Exp $

COMMENT=	Athena port of xminesweeper

DISTNAME=	xmine-1.0.3-Xaw
PKGNAME=	xmine-1.0.3
REVISION=	5
CATEGORIES=	games

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xau Xaw3d Xdmcp Xext Xmu Xpm Xt c

LIB_DEPENDS=    x11/Xaw3d

CONFIGURE_STYLE=imake
NO_TEST=	Yes

.include <bsd.port.mk>
