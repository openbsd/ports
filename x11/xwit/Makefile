# $OpenBSD: Makefile,v 1.16 2013/10/11 10:56:01 naddy Exp $

COMMENT=	X11 window interface tool

DISTNAME=	xwit-3.4
REVISION=	2
CATEGORIES=	x11

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=utilities/}

WANTLIB=	X11 Xau Xdmcp Xext c

USE_GROFF=	Yes
CONFIGURE_STYLE=imake

NO_TEST=	Yes

.include <bsd.port.mk>
