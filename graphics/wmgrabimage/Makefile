# $OpenBSD: Makefile,v 1.1.1.1 2001/01/11 02:57:25 naddy Exp $

DISTNAME=	wmGrabImage-0.70
PKGNAME=	${DISTNAME:L}
CATEGORIES=    	graphics x11
NEED_VERSION=	1.336
HOMEPAGE=	http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=	Peter Stromberg <home@wilfried.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://nis-www.lanl.gov/~mgh/WindowMaker/

RUN_DEPENDS=	convert::graphics/ImageMagick \
		xv::graphics/xv \
		wget::net/wget

WRKSRC=	${WRKDIST}/wmGrabImage

.include <bsd.port.mk>
