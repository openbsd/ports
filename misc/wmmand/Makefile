# $OpenBSD: Makefile,v 1.19 2019/07/12 20:47:55 sthen Exp $

COMMENT=		wm-dockapp; mandelbrot explorer

DISTNAME=		wmMand-1.0
PKGNAME=		${DISTNAME:L}
REVISION=		2
CATEGORIES=     	misc x11 x11/windowmaker

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xext Xpm c xcb

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

RUN_DEPENDS=		graphics/xv


NO_TEST=		Yes

WRKSRC=			${WRKDIST}/wmMand

ALL_TARGET=		clean all

.include <bsd.port.mk>
