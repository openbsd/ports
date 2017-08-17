# $OpenBSD: Makefile,v 1.25 2017/08/17 17:05:03 fcambus Exp $

COMMENT=	twm, plus support for multiple virtual screens, etc

DISTNAME=	ctwm-3.6
REVISION=	2

CATEGORIES=	x11

HOMEPAGE=	https://www.ctwm.org/

# BSD-like/badly worded
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xpm Xt c

MASTER_SITES=	${HOMEPAGE}dist/

CONFIGURE_STYLE= imake

NO_TEST=	Yes

.include <bsd.port.mk>
