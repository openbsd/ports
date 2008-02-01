# $OpenBSD: Makefile,v 1.19 2008/02/01 21:55:23 steven Exp $

COMMENT=	tool for managing X11 cut-buffers

DISTNAME=	xcb-2.4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11

MASTER_SITES=	http://www.goof.com/pcg/marc/data/

HOMEPAGE=	http://www.goof.com/pcg/marc/xcb.html

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xt c

USE_X11=	Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
