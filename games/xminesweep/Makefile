# $OpenBSD: Makefile,v 1.24 2010/11/16 11:23:29 espie Exp $

COMMENT=	Windows minesweeper

DISTNAME=	xminesweep3.0
PKGNAME=	xminesweep-3.0
REVISION =	2
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.warwick.ac.uk/pub/x11/
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no fee
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c pthread-stubs xcb

CONFIGURE_STYLE=imake
USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
