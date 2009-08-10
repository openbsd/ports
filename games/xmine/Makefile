# $OpenBSD: Makefile,v 1.23 2009/08/10 06:31:43 kili Exp $

COMMENT=	Athena port of xminesweeper

DISTNAME=	xmine-1.0.3-Xaw
PKGNAME=	xmine-1.0.3p1
CATEGORIES=	games

MAINTAINER=	Paul Janzen <pjanzen@openbsd.org>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM Xau Xdmcp X11 Xext Xmu Xp Xpm Xt c pthread-stubs xcb

LIB_DEPENDS=    Xaw3d.::x11/Xaw3d

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
