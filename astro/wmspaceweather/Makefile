# $OpenBSD: Makefile,v 1.5 2001/03/09 14:28:46 wilfried Exp $

DISTNAME=		wmSpaceWeather-1.04
PKGNAME=		${DISTNAME:L}
CATEGORIES=		astro x11 x11/windowmaker
NEED_VERSION=		1.340

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

RUN_DEPENDS=		wget::net/wget

USE_X11=		Yes

WRKSRC=			${WRKDIST}/wmSpaceWeather

post-extract:
	@cd ${WRKSRC}; make clean

.include <bsd.port.mk>
