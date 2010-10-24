# $OpenBSD: Makefile,v 1.13 2010/10/24 21:15:37 ajacoutot Exp $

COMMENT=	X11 window interface tool

DISTNAME=	xwit-3.4
REVISION=	0
CATEGORIES=	x11

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xdmcp Xext c

MASTER_SITES=		${MASTER_SITE_XCONTRIB:=utilities/}

USE_GROFF =	Yes
CONFIGURE_STYLE= imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
