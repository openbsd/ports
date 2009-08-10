# $OpenBSD: Makefile,v 1.20 2009/08/10 06:34:30 kili Exp $

# we use "macppc" and not "powerpc" on purpose here ; i.e. apm(4) needed
ONLY_FOR_ARCHS=		amd64 arm i386 macppc sparc sparc64

COMMENT=		wm-dockapp; APM/battery monitor

DISTNAME=		wmapm-3.1
PKGNAME=		${DISTNAME}p1
CATEGORIES=		sysutils x11 x11/windowmaker

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c pthread-stubs xcb

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

USE_X11=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmapm

.include <bsd.port.mk>
