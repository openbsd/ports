# $OpenBSD: Makefile,v 1.21 2010/12/05 18:24:33 jasper Exp $

COMMENT=		wm-dockapp; WWW image monitor

DISTNAME=		wmGrabImage-0.72
PKGNAME=		${DISTNAME:L}
REVISION=		2
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

RUN_DEPENDS=		graphics/ImageMagick \
			graphics/xv

WANTLIB=		X11 Xext Xpm c pthread-stubs xcb
USE_GROFF =		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmGrabImage

.include <bsd.port.mk>
