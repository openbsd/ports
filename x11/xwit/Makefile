# $OpenBSD: Makefile,v 1.12 2010/10/19 08:14:01 espie Exp $

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

USE_X11=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE= imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
