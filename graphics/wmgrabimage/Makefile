# $OpenBSD: Makefile,v 1.17 2009/08/10 06:31:45 kili Exp $

COMMENT=		wm-dockapp; WWW image monitor

DISTNAME=		wmGrabImage-0.72
PKGNAME=		${DISTNAME:L}p2
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
			:xv-*:graphics/xv

WANTLIB=		X11 Xext Xpm c pthread-stubs xcb
USE_X11=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmGrabImage

.include <bsd.port.mk>
