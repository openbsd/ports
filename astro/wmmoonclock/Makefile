# $OpenBSD: Makefile,v 1.30 2013/03/10 22:28:05 espie Exp $

COMMENT=		wm-dockapp; shows the moon phase

DISTNAME=		wmMoonClock-1.27
PKGNAME=		${DISTNAME:L}
REVISION=		4
CATEGORIES=		astro x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=		http://distfiles.nl/

MAKE_ENV=		CC="${CC}"

NO_TEST=		Yes

WRKSRC=			${WRKDIST}/Src

.include <bsd.port.mk>
