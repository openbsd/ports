# $OpenBSD: Makefile,v 1.27 2019/07/12 20:51:25 sthen Exp $

COMMENT=	tool for managing X11 cut-buffers

DISTNAME=	xcb-2.4
REVISION=	2
CATEGORIES=	x11
FIX_EXTRACT_PERMISSIONS=Yes

MASTER_SITES=	http://www.goof.com/pcg/marc/data/

HOMEPAGE=	http://www.goof.com/pcg/marc/xcb.html

# BSD-like, badly worded
PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xt c

CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
