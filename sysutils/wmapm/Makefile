# $OpenBSD: Makefile,v 1.15 2005/03/12 04:23:24 pvalchev Exp $

ONLY_FOR_ARCHS=		i386 macppc zaurus

COMMENT=		'wm-dockapp; APM/battery monitor'

DISTNAME=		wmapm-3.1
CATEGORIES=		sysutils x11 x11/windowmaker

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c 

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

USE_X11=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmapm

.include <bsd.port.mk>
