# $OpenBSD: Makefile,v 1.1.1.1 2001/01/10 16:54:48 naddy Exp $

DISTNAME=	wmSpaceWeather-1.04
PKGNAME=	${DISTNAME:L}
CATEGORIES=	astro x11
NEED_VERSION=	1.348
MASTER_SITES=	http://nis-www.lanl.gov/~mgh/WindowMaker/
HOMEPAGE=	http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=	Peter Stromberg <home@wilfried.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	wget::net/wget

WRKSRC=	${WRKDIST}/wmSpaceWeather

post-extract:
	@cd ${WRKSRC}; make clean

.include <bsd.port.mk>
