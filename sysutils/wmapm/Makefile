# $OpenBSD: Makefile,v 1.26 2012/12/13 16:34:48 naddy Exp $

ONLY_FOR_ARCHS=		${APM_ARCHS}

COMMENT=		wm-dockapp; APM/battery monitor

DISTNAME=		wmapm-3.1
REVISION =		2
CATEGORIES=		sysutils x11 x11/windowmaker

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c pthread-stubs xcb

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

USE_GROFF =		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmapm

.include <bsd.port.mk>
