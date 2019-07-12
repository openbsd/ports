# $OpenBSD: Makefile,v 1.30 2019/07/12 20:49:54 sthen Exp $

ONLY_FOR_ARCHS=		${APM_ARCHS}

COMMENT=		wm-dockapp; APM/battery monitor

DISTNAME=		wmapm-3.1
REVISION =		3
CATEGORIES=		sysutils x11 x11/windowmaker

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext Xpm c xcb

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

NO_TEST=		Yes

WRKSRC=			${WRKDIST}/wmapm

.include <bsd.port.mk>
