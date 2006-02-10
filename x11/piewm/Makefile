# $OpenBSD: Makefile,v 1.18 2006/02/10 10:07:45 steven Exp $

COMMENT=	"tvtwm with pie (circular) menus"

DISTNAME=	piewm-1.03
CATEGORIES=	x11

# BSD-like/badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xmu Xpm Xt c m

MASTER_SITES=	http://www.crynwr.com/piewm/

USE_X11=	Yes

CONFIGURE_STYLE= imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
