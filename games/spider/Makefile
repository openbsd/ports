# $OpenBSD: Makefile,v 1.27 2016/08/05 16:25:20 juanfra Exp $

COMMENT=	challenging double decked solitaire game

DISTNAME=	spider
PKGNAME=	spider-1.1
REVISION =	5
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.uni-koeln.de/windows/xcontrib/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c pthread-stubs xcb

CONFIGURE_STYLE=imake
INSTALL_TARGET=	install install.doc

NO_TEST=	Yes

.include <bsd.port.mk>
