# $OpenBSD: Makefile,v 1.11 2002/05/15 09:30:22 wilfried Exp $

ONLY_FOR_ARCHS=		i386

COMMENT=		'wm-dockapp; APM/battery monitor'

DISTNAME=		wmapm-3.1
CATEGORIES=		sysutils x11 x11/windowmaker
NEED_VERSION=		1.515

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

USE_X11=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmapm

.include <bsd.port.mk>
