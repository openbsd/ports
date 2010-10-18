# $OpenBSD: Makefile,v 1.25 2010/10/18 16:47:00 espie Exp $

COMMENT=		wm-dockapp; shows the moon phase

DISTNAME=		wmMoonClock-1.27
PKGNAME=		${DISTNAME:L}
CATEGORIES=		astro x11 x11/windowmaker

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REVISION =	3
WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=		http://distfiles.nl/

MAKE_ENV=		CC="${CC}"
USE_X11=		Yes
USE_GROFF =	Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/Src

.include <bsd.port.mk>
