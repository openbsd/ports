# $OpenBSD: Makefile,v 1.26 2019/07/12 20:51:30 sthen Exp $

COMMENT=	PostIt (R) messages onto your X11 screen

DISTNAME=	XPostitPlus-2.3
REVISION=	4
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=office/}

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c 

CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
