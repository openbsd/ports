# $OpenBSD: Makefile,v 1.31 2013/03/10 22:28:05 espie Exp $

COMMENT=		wm-dockapp; space weather monitor

DISTNAME=		wmSpaceWeather-1.04
PKGNAME=		${DISTNAME:L}
REVISION=		5
CATEGORIES=		astro x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		http://distfiles.nl/

MAKE_ENV=		CC="${CC}"

NO_TEST=		Yes

WRKSRC=			${WRKDIST}/wmSpaceWeather

post-extract:
	@cd ${WRKSRC} && make clean

.include <bsd.port.mk>
