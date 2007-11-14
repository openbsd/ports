# $OpenBSD: Makefile,v 1.18 2007/11/14 09:43:40 steven Exp $

COMMENT=	super simple digital timer for X11

DISTNAME=	xtimer-8089
PKGNAME=	xtimer-0.8089p0
CATEGORIES=	misc

MASTER_SITES=	http://www.bsddiary.net/xtimer/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xp Xpm Xt c

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
