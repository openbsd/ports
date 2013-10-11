# $OpenBSD: Makefile,v 1.17 2013/10/11 23:50:13 naddy Exp $

COMMENT=		wm-dockapp; mandelbrot explorer

DISTNAME=		wmMand-1.0
PKGNAME=		${DISTNAME:L}
REVISION=		1
CATEGORIES=     	misc x11 x11/windowmaker

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xpm c pthread-stubs xcb

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

RUN_DEPENDS=		graphics/xv


NO_TEST=		Yes

WRKSRC=			${WRKDIST}/wmMand

ALL_TARGET=		clean all

.include <bsd.port.mk>
