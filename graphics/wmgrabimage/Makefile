# $OpenBSD: Makefile,v 1.11 2002/03/21 20:57:09 espie Exp $

COMMENT=		'wm-dockapp; WWW image monitor'

DISTNAME=		wmGrabImage-0.72
PKGNAME=		${DISTNAME:L}
CATEGORIES=		graphics x11 x11/windowmaker
NEED_VERSION=		1.515
EXTRACT_SUFX=		.tgz

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

RUN_DEPENDS=		:ImageMagick-*:graphics/ImageMagick \
			:xv-*:graphics/xv \
			:wget-*:net/wget

USE_X11=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmGrabImage

.include <bsd.port.mk>
