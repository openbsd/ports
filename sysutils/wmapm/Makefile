# $OpenBSD: Makefile,v 1.8 2001/07/13 11:24:46 naddy Exp $

ONLY_FOR_ARCHS=		i386

COMMENT=		'wm-dockapp; APM/battery monitor'

DISTNAME=		wmapm-3.1
CATEGORIES=		sysutils x11 x11/windowmaker
NEED_VERSION=		1.364

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

USE_X11=		Yes

WRKSRC=			${WRKDIST}/wmapm

.include <bsd.port.mk>
