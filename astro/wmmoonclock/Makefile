# $OpenBSD: Makefile,v 1.29 2012/12/13 16:34:47 naddy Exp $

COMMENT=		wm-dockapp; shows the moon phase

DISTNAME=		wmMoonClock-1.27
PKGNAME=		${DISTNAME:L}
REVISION=		4
CATEGORIES=		astro x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=		http://distfiles.nl/

MAKE_ENV=		CC="${CC}"

NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/Src

.include <bsd.port.mk>
