# $OpenBSD: Makefile,v 1.23 2013/03/11 11:46:17 espie Exp $

COMMENT=	tool for managing X11 cut-buffers

DISTNAME=	xcb-2.4
REVISION=	0
CATEGORIES=	x11

MASTER_SITES=	http://www.goof.com/pcg/marc/data/

HOMEPAGE=	http://www.goof.com/pcg/marc/xcb.html

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xt c

USE_GROFF =	Yes
CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
