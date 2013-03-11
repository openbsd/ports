# $OpenBSD: Makefile,v 1.23 2013/03/11 11:46:19 espie Exp $

COMMENT=	PostIt (R) messages onto your X11 screen

DISTNAME=	XPostitPlus-2.3
REVISION=	3
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=office/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c 

USE_GROFF =	Yes
CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
