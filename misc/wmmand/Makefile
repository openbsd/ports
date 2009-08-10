# $OpenBSD: Makefile,v 1.10 2009/08/10 06:33:02 kili Exp $

COMMENT=		wm-dockapp; mandelbrot explorer

DISTNAME=		wmMand-1.0
PKGNAME=		${DISTNAME:L}p0
CATEGORIES=     	misc x11 x11/windowmaker

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c pthread-stubs xcb

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

RUN_DEPENDS=		:xv-*:graphics/xv

USE_X11=		Yes

NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmMand

ALL_TARGET=		clean all

.include <bsd.port.mk>
