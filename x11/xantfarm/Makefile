# $OpenBSD: Makefile,v 1.23 2013/10/11 20:39:59 naddy Exp $

COMMENT=	ant hill simulation on X11 root window

DISTNAME=	xantfarm
PKGNAME=	xantfarm-1.16
REVISION=	2
CATEGORIES=	x11

HOMEPAGE=	http://www.acme.com/software/xantfarm/

MASTER_SITES=	${HOMEPAGE}
DISTFILES=	xantfarm_23oct1991.tar.gz

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c

USE_GROFF =	Yes
CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
