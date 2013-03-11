# $OpenBSD: Makefile,v 1.23 2013/03/11 11:46:17 espie Exp $

COMMENT=	find color values by graphical color mixing

DISTNAME=	xcoloredit
PKGNAME=	xcoloredit-1.2
REVISION=	1
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
