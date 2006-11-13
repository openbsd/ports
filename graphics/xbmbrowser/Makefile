# $OpenBSD: Makefile,v 1.15 2006/11/13 11:20:25 steven Exp $
# $FreeBSD: Makefile,v 1.3 1997/08/26 07:12:20 tg Exp $

COMMENT=	"view complete directories of X bitmaps and X pixmaps"

DISTNAME=	xbmbrowser5.1
PKGNAME=	xbmbrowser-5.1
CATEGORIES=	graphics

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=utilities/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xp Xpm Xt c

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
