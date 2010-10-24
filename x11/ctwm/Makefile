# $OpenBSD: Makefile,v 1.21 2010/10/24 21:15:31 ajacoutot Exp $

COMMENT=	twm, plus support for multiple virtual screens, etc

DISTNAME=	ctwm-3.6
REVISION=	0

CATEGORIES=	x11

HOMEPAGE=	http://ctwm.dl.nu/

# BSD-like/badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xpm Xt c

MASTER_SITES=	${HOMEPAGE}/dist/

USE_GROFF =	Yes
CONFIGURE_STYLE= imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
