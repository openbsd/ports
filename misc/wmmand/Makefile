# $OpenBSD: Makefile,v 1.14 2010/11/19 07:23:12 espie Exp $

COMMENT=		wm-dockapp; mandelbrot explorer

DISTNAME=		wmMand-1.0
PKGNAME=		${DISTNAME:L}
REVISION=		0
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

RUN_DEPENDS=		graphics/xv

USE_GROFF =		Yes

NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmMand

ALL_TARGET=		clean all

.include <bsd.port.mk>
