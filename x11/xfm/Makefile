# $OpenBSD: Makefile,v 1.30 2013/03/11 11:46:18 espie Exp $

COMMENT=	X11 File Manager

DISTNAME=	xfm-1.4.3
REVISION=	5
CATEGORIES=	x11

HOMEPAGE=	http://www.musikwissenschaft.uni-mainz.de/~ag/xfm/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xpm Xt c Xaw3d

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	x11/Xaw3d

USE_GROFF =	Yes
CONFIGURE_STYLE= imake

NO_TEST=	Yes

.include <bsd.port.mk>
