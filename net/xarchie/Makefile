# $OpenBSD: Makefile,v 1.16 2007/11/17 20:39:03 steven Exp $
# $FreeBSD: Makefile,v 1.12 1996/12/01 01:23:22 obrien Exp $

COMMENT=	X11 front-end program for the archie network search service

DISTNAME=	xarchie-2.0.10
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xp Xpm Xt c 

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
