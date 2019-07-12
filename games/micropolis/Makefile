# $OpenBSD: Makefile,v 1.23 2019/07/12 20:46:21 sthen Exp $

COMMENT=	city-building simulation

DISTNAME=	micropolis-20080211
REVISION=	8
WRKDIST=	${WRKDIR}/micropolis

CATEGORIES=	games

HOMEPAGE=	http://www.donhopkins.com/home/micropolis/
MASTER_SITES=	http://freedaemon.com/~deanna/

# GPLv3
# beware of SimCity, tm of Electronic Arts
PERMIT_PACKAGE=	Yes

WANTLIB += SDL SDL_mixer X11 Xext Xpm c m pthread

NO_TEST=	Yes
RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/sdl-mixer

CFLAGS+=	-I${LOCALBASE}/include -I${X11BASE}/include

MAKE_FLAGS =	X11BASE=${X11BASE}

do-configure:
	@${SUBST_CMD} ${WRKDIST}/Micropolis

.include <bsd.port.mk>
