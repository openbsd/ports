# $OpenBSD: Makefile,v 1.15 2013/03/11 11:46:19 espie Exp $

COMMENT=	X11 window interface tool

DISTNAME=	xwit-3.4
REVISION=	1
CATEGORIES=	x11

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=utilities/}

WANTLIB=	X11 Xau Xdmcp Xext c

CONFIGURE_STYLE=imake

NO_TEST=	Yes

.include <bsd.port.mk>
