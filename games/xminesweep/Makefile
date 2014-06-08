# $OpenBSD: Makefile,v 1.28 2014/06/08 12:00:54 espie Exp $

COMMENT=	Windows minesweeper

DISTNAME=	xminesweep3.0
PKGNAME=	xminesweep-3.0
REVISION =	4
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.warwick.ac.uk/pub/x11/
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c pthread-stubs xcb

CONFIGURE_STYLE=imake
NO_TEST=	Yes

.include <bsd.port.mk>
