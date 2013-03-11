# $OpenBSD: Makefile,v 1.20 2013/03/11 11:46:16 espie Exp $

COMMENT=		wm-dockapp; calendar/clock

DISTNAME=		wmCalClock-1.25
PKGNAME=		${DISTNAME:L}
REVISION=		0
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

USE_GROFF =		Yes
NO_TEST=		Yes

WRKSRC=			${WRKDIST}/Src

.include <bsd.port.mk>
