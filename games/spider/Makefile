# $OpenBSD: Makefile,v 1.26 2014/12/05 12:50:09 naddy Exp $

COMMENT=	challenging double decked solitaire game

DISTNAME=	spider
PKGNAME=	spider-1.1
REVISION =	4
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.uni-koeln.de/windows/xcontrib/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c pthread-stubs xcb

CONFIGURE_STYLE=imake
INSTALL_TARGET=	install install.doc

NO_TEST=	Yes

.include <bsd.port.mk>
