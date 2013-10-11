# $OpenBSD: Makefile,v 1.24 2013/10/11 20:40:12 naddy Exp $

COMMENT=	PostIt (R) messages onto your X11 screen

DISTNAME=	XPostitPlus-2.3
REVISION=	4
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=office/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c 

USE_GROFF =	Yes
CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
