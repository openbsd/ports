# $OpenBSD: Makefile,v 1.15 2007/09/15 20:09:43 simon Exp $

COMMENT=		wm-dockapp; WWW image monitor

DISTNAME=		wmGrabImage-0.72
PKGNAME=		${DISTNAME:L}p0
CATEGORIES=		graphics x11 x11/windowmaker
EXTRACT_SUFX=		.tgz

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

RUN_DEPENDS=		:ImageMagick-*:graphics/ImageMagick \
			:xv-*:graphics/xv \
			:wget-*:net/wget

WANTLIB=		X11 c Xext Xpm
USE_X11=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmGrabImage

.include <bsd.port.mk>
