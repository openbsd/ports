# $OpenBSD: Makefile,v 1.20 2009/08/10 06:29:51 kili Exp $

COMMENT=		wm-dockapp; shows the moon phase

DISTNAME=		wmMoonClock-1.27
PKGNAME=		${DISTNAME:L}p2
CATEGORIES=		astro x11 x11/windowmaker

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext Xpm c m pthread-stubs xcb

MASTER_SITES=		http://humppa.nl/distfiles/

MAKE_ENV=		CC="${CC}"
USE_X11=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/Src

.include <bsd.port.mk>
