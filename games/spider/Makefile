# $OpenBSD: Makefile,v 1.23 2010/10/24 21:19:02 ajacoutot Exp $

COMMENT=	challenging double decked solitaire game

DISTNAME=	spider
PKGNAME=	spider-1.1p4
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.uni-koeln.de/windows/xcontrib/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c pthread-stubs xcb

CONFIGURE_STYLE=imake
INSTALL_TARGET=	install install.doc

USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
