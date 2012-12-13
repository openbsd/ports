# $OpenBSD: Makefile,v 1.30 2012/12/13 16:34:47 naddy Exp $

COMMENT=		wm-dockapp; space weather monitor

DISTNAME=		wmSpaceWeather-1.04
PKGNAME=		${DISTNAME:L}
REVISION=		5
CATEGORIES=		astro x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		http://distfiles.nl/

MAKE_ENV=		CC="${CC}"

NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmSpaceWeather

post-extract:
	@cd ${WRKSRC} && make clean

.include <bsd.port.mk>
