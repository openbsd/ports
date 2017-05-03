# $OpenBSD: Makefile,v 1.30 2017/05/03 14:57:52 espie Exp $

COMMENT=	X11 image grabber

DISTNAME=	xgrabsc.2_41
PKGNAME=	xgrab-2.41
REVISION=	3
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}
EXTRACT_SUFX=	.tar.Z

# License: BSD, badly worded sublicense
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c

USE_GROFF =		Yes
CONFIGURE_STYLE=	imake

NO_TEST=		Yes
CFLAGS =		-O2 -g

.include <bsd.port.mk>
