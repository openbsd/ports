# $OpenBSD: Makefile,v 1.17 2004/12/17 15:03:18 alek Exp $

COMMENT=	"X11 File Manager"

DISTNAME=	xfm-1.4.3
CATEGORIES=	x11

HOMEPAGE=	http://www.musikwissenschaft.uni-mainz.de/~ag/xfm/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xmu Xp Xpm Xt c

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	Xaw3d.6::x11/Xaw3d

USE_X11=	Yes
CONFIGURE_STYLE= imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
