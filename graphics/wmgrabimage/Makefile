# $OpenBSD: Makefile,v 1.4 2001/02/01 17:34:26 wilfried Exp $

DISTNAME=	wmGrabImage-0.70
PKGNAME=	${DISTNAME:L}
CATEGORIES=    	graphics x11 x11/windowmaker
NEED_VERSION=	1.336
HOMEPAGE=	http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://nis-www.lanl.gov/~mgh/WindowMaker/

RUN_DEPENDS=	convert::graphics/ImageMagick \
		xv::graphics/xv \
		wget::net/wget

USE_X11=	Yes
WRKSRC=	${WRKDIST}/wmGrabImage

.include <bsd.port.mk>
