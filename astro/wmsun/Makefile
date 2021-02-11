# $OpenBSD: Makefile,v 1.34 2021/02/11 06:53:55 daniel Exp $

COMMENT=		wm-dockapp; shows sunrise/sunset times

DISTNAME=		wmSun-1.03
PKGNAME=		${DISTNAME:L}
REVISION=		6
CATEGORIES=		astro x11 x11/windowmaker

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=		https://distfiles.sigtrap.nl/

MAKE_ENV=		CC="${CC}"

NO_TEST=		Yes

WRKSRC=			${WRKDIST}/wmSun

post-extract:
	@cd ${WRKSRC} && make clean

.include <bsd.port.mk>
