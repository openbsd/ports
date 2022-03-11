COMMENT=		wm-dockapp; space weather monitor

DISTNAME=		wmSpaceWeather-1.04
PKGNAME=		${DISTNAME:L}
REVISION=		7
CATEGORIES=		astro x11 x11/windowmaker

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		https://distfiles.sigtrap.nl/

RUN_DEPENDS=		devel/p5-Time-modules

MAKE_ENV=		CC="${CC}"

NO_TEST=		Yes

WRKSRC=			${WRKDIST}/wmSpaceWeather

post-extract:
	@cd ${WRKSRC} && make clean

.include <bsd.port.mk>
