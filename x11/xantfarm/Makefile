# $OpenBSD: Makefile,v 1.25 2019/07/12 20:51:25 sthen Exp $

COMMENT=	ant hill simulation on X11 root window

DISTNAME=	xantfarm
PKGNAME=	xantfarm-1.16
REVISION=	2
CATEGORIES=	x11

HOMEPAGE=	http://www.acme.com/software/xantfarm/

MASTER_SITES=	${HOMEPAGE}
DISTFILES=	xantfarm_23oct1991.tar.gz

# BSD-like, badly worded
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c

CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
