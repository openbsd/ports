# $OpenBSD: Makefile,v 1.25 2010/10/19 08:14:00 espie Exp $

COMMENT=	X11 image grabber

DISTNAME=	xgrabsc.2_41
PKGNAME=	xgrab-2.41
REVISION=	1
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}
EXTRACT_SUFX=	.tar.Z

# License: BSD, badly worded sublicense
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c

USE_X11=		Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=		Yes

.include <bsd.port.mk>
