# $OpenBSD: Makefile,v 1.8 2001/07/13 11:25:10 naddy Exp $

COMMENT=		'wm-dockapp; weather monitor'

DISTNAME=		wmWeather-1.31
PKGNAME=		${DISTNAME:L}
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.364

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

RUN_DEPENDS=		wget::net/wget

USE_X11=		Yes

WRKSRC=			${WRKDIST}/Src

.include <bsd.port.mk>
