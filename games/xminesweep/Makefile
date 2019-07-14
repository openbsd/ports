# $OpenBSD: Makefile,v 1.31 2019/07/14 00:39:37 naddy Exp $

COMMENT=	Windows minesweeper

DISTNAME=	xminesweep3.0
PKGNAME=	xminesweep-3.0
REVISION =	6
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.warwick.ac.uk/pub/x11/
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c xcb

CONFIGURE_STYLE=imake
NO_TEST=	Yes

.include <bsd.port.mk>
