COMMENT=	rather neat animated clock

DISTNAME=	xdaliclock-2.44
CATEGORIES=	x11

HOMEPAGE=	https://www.jwz.org/xdaliclock/

# License: BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		ICE SM X11 Xext Xt c

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKDIST}
WRKSRC=			${WRKDIST}/X11

NO_TEST=		Yes

.include <bsd.port.mk>
