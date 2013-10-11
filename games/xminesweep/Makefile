# $OpenBSD: Makefile,v 1.26 2013/10/11 20:39:29 naddy Exp $

COMMENT=	Windows minesweeper

DISTNAME=	xminesweep3.0
PKGNAME=	xminesweep-3.0
REVISION =	3
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.warwick.ac.uk/pub/x11/
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c pthread-stubs xcb

CONFIGURE_STYLE=imake
USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
