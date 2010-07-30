# $OpenBSD: Makefile,v 1.20 2010/07/30 06:59:02 ajacoutot Exp $

COMMENT=	PostIt (R) messages onto your X11 screen

DISTNAME=	XPostitPlus-2.3
REVISION=	3
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=office/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c 

USE_X11=		Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
