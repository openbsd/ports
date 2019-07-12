# $OpenBSD: Makefile,v 1.26 2019/07/12 20:51:25 sthen Exp $

COMMENT=	find color values by graphical color mixing

DISTNAME=	xcoloredit
PKGNAME=	xcoloredit-1.2
REVISION=	2
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.tar.Z

# License: BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c

CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
