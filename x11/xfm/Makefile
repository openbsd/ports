# $OpenBSD: Makefile,v 1.14 2002/03/21 21:25:57 espie Exp $

COMMENT=	"X11 File Manager"

DISTNAME=	xfm-1.4.3
CATEGORIES=	x11
NEED_VERSION=	1.515

HOMEPAGE=	http://www.musikwissenschaft.uni-mainz.de/~ag/xfm/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	Xaw3d.6::x11/Xaw3d

USE_X11=	Yes
CONFIGURE_STYLE= imake

.include <bsd.port.mk>
