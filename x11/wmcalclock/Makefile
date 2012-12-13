# $OpenBSD: Makefile,v 1.19 2012/12/13 16:34:48 naddy Exp $

COMMENT=		wm-dockapp; calendar/clock

DISTNAME=		wmCalClock-1.25
PKGNAME=		${DISTNAME:L}
REVISION=		0
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

USE_GROFF =		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/Src

.include <bsd.port.mk>
