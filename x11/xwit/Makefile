# $OpenBSD: Makefile,v 1.17 2019/07/12 21:02:30 sthen Exp $

COMMENT=	X11 window interface tool

DISTNAME=	xwit-3.4
REVISION=	2
CATEGORIES=	x11

# BSD-like, badly worded
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=utilities/}

WANTLIB=	X11 Xau Xdmcp Xext c

USE_GROFF=	Yes
CONFIGURE_STYLE=imake

NO_TEST=	Yes

.include <bsd.port.mk>
