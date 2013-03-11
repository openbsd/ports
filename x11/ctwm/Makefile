# $OpenBSD: Makefile,v 1.22 2013/03/11 11:46:08 espie Exp $

COMMENT=	twm, plus support for multiple virtual screens, etc

DISTNAME=	ctwm-3.6
REVISION=	0

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
