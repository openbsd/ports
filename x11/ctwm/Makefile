# $OpenBSD: Makefile,v 1.23 2013/10/11 20:39:49 naddy Exp $

COMMENT=	twm, plus support for multiple virtual screens, etc

DISTNAME=	ctwm-3.6
REVISION=	1

CATEGORIES=	x11

HOMEPAGE=	http://ctwm.dl.nu/

# BSD-like/badly worded
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xpm Xt c

MASTER_SITES=	${HOMEPAGE}/dist/

USE_GROFF =	Yes
CONFIGURE_STYLE= imake

NO_TEST=	Yes

.include <bsd.port.mk>
