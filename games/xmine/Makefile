# $OpenBSD: Makefile,v 1.33 2016/03/05 17:41:04 sthen Exp $

COMMENT=	Athena port of xminesweeper

DISTNAME=	xmine-1.0.3-Xaw
PKGNAME=	xmine-1.0.3
REVISION=	5
CATEGORIES=	games

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xaw3d Xdmcp Xext Xmu Xpm Xt c

LIB_DEPENDS=    x11/Xaw3d

CONFIGURE_STYLE=imake
NO_TEST=	Yes

.include <bsd.port.mk>
