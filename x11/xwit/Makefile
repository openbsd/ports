# $OpenBSD: Makefile,v 1.9 2007/09/15 20:04:29 merdely Exp $

COMMENT=	X11 window interface tool

DISTNAME=	xwit-3.4
CATEGORIES=	x11

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c 

MASTER_SITES=		${MASTER_SITE_XCONTRIB:=utilities/}

USE_X11=	Yes
CONFIGURE_STYLE= imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
