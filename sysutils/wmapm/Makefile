# $OpenBSD: Makefile,v 1.10 2002/03/21 21:25:52 espie Exp $

ONLY_FOR_ARCHS=		i386

COMMENT=		'wm-dockapp; APM/battery monitor'

DISTNAME=		wmapm-3.1
CATEGORIES=		sysutils x11 x11/windowmaker
NEED_VERSION=		1.515

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

USE_X11=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmapm

.include <bsd.port.mk>
