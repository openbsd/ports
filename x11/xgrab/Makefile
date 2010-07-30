# $OpenBSD: Makefile,v 1.24 2010/07/30 06:59:01 ajacoutot Exp $

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
CONFIGURE_STYLE=	imake

NO_REGRESS=		Yes

.include <bsd.port.mk>
