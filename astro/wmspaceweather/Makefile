# $OpenBSD: Makefile,v 1.15 2004/11/21 12:50:33 espie Exp $

COMMENT=		'wm-dockapp; space weather monitor'

DISTNAME=		wmSpaceWeather-1.04
PKGNAME=		${DISTNAME:L}
CATEGORIES=		astro x11 x11/windowmaker

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

RUN_DEPENDS=		:wget-*:net/wget

MAKE_ENV=		CC="${CC}"
USE_X11=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmSpaceWeather

post-extract:
	@cd ${WRKSRC} && make clean

.include <bsd.port.mk>
