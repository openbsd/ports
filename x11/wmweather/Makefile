# $OpenBSD: Makefile,v 1.1.1.1 2001/01/09 22:13:42 naddy Exp $

DISTNAME=	wmWeather-1.31
PKGNAME=	${DISTNAME:L}
CATEGORIES=	x11
NEED_VERSION=	1.348
MASTER_SITES=	http://nis-www.lanl.gov/~mgh/WindowMaker/
HOMEPAGE=	http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=	Peter Stromberg <home@wilfried.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	wget::net/wget

WRKSRC=	${WRKDIST}/Src

.include <bsd.port.mk>
