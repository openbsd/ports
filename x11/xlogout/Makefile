# $OpenBSD: Makefile,v 1.25 2013/10/11 20:40:10 naddy Exp $

COMMENT=	simple logout button

DISTNAME=	xlogout-1.1
REVISION=	3
CATEGORIES=	x11

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c 

MASTER_SITES=	ftp://ftp.tu-darmstadt.de/pub/X11/other/
EXTRACT_SUFX=	.tar.Z

WRKDIST=	${WRKDIR}/xlogout
USE_GROFF =	Yes
CONFIGURE_STYLE= imake

NO_TEST=	Yes

.include <bsd.port.mk>
