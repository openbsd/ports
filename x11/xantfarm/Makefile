# $OpenBSD: Makefile,v 1.20 2010/10/19 08:14:00 espie Exp $

COMMENT=	ant hill simulation on X11 root window

DISTNAME=	xantfarm
PKGNAME=	xantfarm-1.16
REVISION=	1
CATEGORIES=	x11

HOMEPAGE=	http://www.acme.com/software/xantfarm/

MASTER_SITES=	${HOMEPAGE}
DISTFILES=	xantfarm_23oct1991.tar.gz

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c

USE_X11=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
