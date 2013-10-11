# $OpenBSD: Makefile,v 1.24 2013/10/11 20:40:02 naddy Exp $

COMMENT=	find color values by graphical color mixing

DISTNAME=	xcoloredit
PKGNAME=	xcoloredit-1.2
REVISION=	2
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.tar.Z

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c

USE_GROFF =	Yes
CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
