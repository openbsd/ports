# $OpenBSD: Makefile,v 1.4 2001/02/01 17:34:25 wilfried Exp $

DISTNAME=	wmSpaceWeather-1.04
PKGNAME=	${DISTNAME:L}
CATEGORIES=	astro x11 x11/windowmaker
NEED_VERSION=	1.348
MASTER_SITES=	http://nis-www.lanl.gov/~mgh/WindowMaker/
HOMEPAGE=	http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	wget::net/wget

USE_X11=	Yes
WRKSRC=	${WRKDIST}/wmSpaceWeather

post-extract:
	@cd ${WRKSRC}; make clean

.include <bsd.port.mk>
