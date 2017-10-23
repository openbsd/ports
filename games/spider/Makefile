# $OpenBSD: Makefile,v 1.28 2017/10/23 17:10:50 sthen Exp $

COMMENT=	challenging double decked solitaire game

DISTNAME=	spider
PKGNAME=	spider-1.1
REVISION =	6
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.uni-koeln.de/windows/xcontrib/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c xcb

CONFIGURE_STYLE=imake
INSTALL_TARGET=	install install.doc

NO_TEST=	Yes

.include <bsd.port.mk>
