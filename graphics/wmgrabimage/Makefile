# $OpenBSD: Makefile,v 1.25 2013/10/11 23:49:53 naddy Exp $

COMMENT=		wm-dockapp; WWW image monitor

DISTNAME=		wmGrabImage-0.72
PKGNAME=		${DISTNAME:L}
REVISION=		4
CATEGORIES=		graphics x11 x11/windowmaker
EXTRACT_SUFX=		.tgz

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

RUN_DEPENDS=		graphics/ImageMagick \
			graphics/xv

WANTLIB=		X11 Xext Xpm c
NO_TEST=		Yes

WRKSRC=			${WRKDIST}/wmGrabImage

.include <bsd.port.mk>
