# $OpenBSD: Makefile,v 1.14 2004/11/21 12:50:33 espie Exp $

COMMENT=		'wm-dockapp; shows sunrise/sunset times'

DISTNAME=		wmSun-1.03
PKGNAME=		${DISTNAME:L}
CATEGORIES=		astro x11 x11/windowmaker

HOMEPAGE=		http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=		http://nis-www.lanl.gov/~mgh/WindowMaker/

MAKE_ENV=		CC="${CC}"
USE_X11=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmSun

post-extract:
	@cd ${WRKSRC} && make clean

.include <bsd.port.mk>
