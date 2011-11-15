# $OpenBSD: Makefile,v 1.14 2011/11/15 16:36:01 naddy Exp $

COMMENT=	X11 window interface tool

DISTNAME=	xwit-3.4
REVISION=	1
CATEGORIES=	x11

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=utilities/}

WANTLIB=	X11 Xau Xdmcp Xext c

CONFIGURE_STYLE=imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
