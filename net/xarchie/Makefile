# $OpenBSD: Makefile,v 1.19 2010/07/12 22:07:42 sthen Exp $
# $FreeBSD: Makefile,v 1.12 1996/12/01 01:23:22 obrien Exp $

COMMENT=	X11 front-end program for the archie network search service

DISTNAME=	xarchie-2.0.10
REVISION=	2
CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c pthread-stubs xcb

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
