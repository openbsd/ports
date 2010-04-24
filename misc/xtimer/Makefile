# $OpenBSD: Makefile,v 1.20 2010/04/24 20:18:39 naddy Exp $

COMMENT=	super simple digital timer for X11

DISTNAME=	xtimer-8089
PKGNAME=	xtimer-0.8089p2
CATEGORIES=	misc

MASTER_SITES=	http://www.bsddiary.net/xtimer/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c pthread-stubs xcb

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
