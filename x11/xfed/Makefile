# $OpenBSD: Makefile,v 1.27 2011/07/19 09:28:36 jasper Exp $

COMMENT=	X11 fonts (.bdf files) editor

DISTNAME=	xfed
PKGNAME=	xfed-1.0
REVISION=	1
CATEGORIES=	x11 fonts

# original site no longer available.
MASTER_SITES=	http://spacehopper.org/mirrors/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xdmcp Xext c

USE_GROFF =	Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
