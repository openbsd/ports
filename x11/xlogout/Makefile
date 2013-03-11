# $OpenBSD: Makefile,v 1.22 2013/03/11 11:46:19 espie Exp $

COMMENT=	simple logout button

DISTNAME=	xlogout-1.1
REVISION=	1
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
