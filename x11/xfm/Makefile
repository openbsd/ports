# $OpenBSD: Makefile,v 1.19 2006/09/18 10:52:10 espie Exp $

COMMENT=	"X11 File Manager"

DISTNAME=	xfm-1.4.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11

HOMEPAGE=	http://www.musikwissenschaft.uni-mainz.de/~ag/xfm/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xmu Xp Xpm Xt c

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	Xaw3d.>=6::x11/Xaw3d

USE_X11=	Yes
CONFIGURE_STYLE= imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
