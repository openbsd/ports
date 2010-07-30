# $OpenBSD: Makefile,v 1.26 2010/07/30 08:03:00 ajacoutot Exp $

COMMENT=	X11 File Manager

DISTNAME=	xfm-1.4.3
REVISION=	5
CATEGORIES=	x11

HOMEPAGE=	http://www.musikwissenschaft.uni-mainz.de/~ag/xfm/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xpm Xt c Xaw3d

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	::x11/Xaw3d

USE_X11=	Yes
CONFIGURE_STYLE= imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
