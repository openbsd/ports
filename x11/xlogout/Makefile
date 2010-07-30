# $OpenBSD: Makefile,v 1.19 2010/07/30 06:59:01 ajacoutot Exp $

COMMENT=	simple logout button

DISTNAME=	xlogout-1.1
REVISION=	1
CATEGORIES=	x11

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c 

MASTER_SITES=	ftp://ftp.tu-darmstadt.de/pub/X11/other/
EXTRACT_SUFX=	.tar.Z

WRKDIST=	${WRKDIR}/xlogout
USE_X11=	Yes
CONFIGURE_STYLE= imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
