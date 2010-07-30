# $OpenBSD: Makefile,v 1.22 2010/07/30 06:58:59 ajacoutot Exp $

COMMENT=	tvtwm with pie (circular) menus

DISTNAME=	piewm-1.04
REVISION=	0
CATEGORIES=	x11

# BSD-like/badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xpm Xt c m

MASTER_SITES=	http://www.crynwr.com/piewm/

USE_X11=	Yes

CONFIGURE_STYLE= imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
