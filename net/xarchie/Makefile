# $OpenBSD: Makefile,v 1.14 2006/11/13 12:51:15 steven Exp $
# $FreeBSD: Makefile,v 1.12 1996/12/01 01:23:22 obrien Exp $

COMMENT=	"X11 front-end program for the archie network search service"

DISTNAME=	xarchie-2.0.10
CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xp Xpm Xt c 

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
