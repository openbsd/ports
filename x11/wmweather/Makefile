# $OpenBSD: Makefile,v 1.11 2002/03/21 21:25:56 espie Exp $

COMMENT=		'wm-dockapp; weather monitor'

DISTNAME=		wmWeather-1.31
PKGNAME=		${DISTNAME:L}
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.515

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

RUN_DEPENDS=		:wget-*:net/wget

USE_X11=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/Src

.include <bsd.port.mk>
