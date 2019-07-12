# $OpenBSD: Makefile,v 1.27 2019/07/12 20:46:23 sthen Exp $

COMMENT=	enhanced clone of Id Software's Doom game; multiplayer#'
DISTNAME=	prboom-2.5.0
REVISION=	2

CATEGORIES=	games x11

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=prboom/}

HOMEPAGE=	http://prboom.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB =	SDL c m pthread GL GLU SDL_mixer>=3 SDL_net>=1 png>=4

RUN_DEPENDS =	audio/timidity

LIB_DEPENDS =	devel/sdl-mixer \
		devel/sdl-net \
		graphics/png

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.61
CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=--disable-cpu-opt \
		--with-waddir=${TRUEPREFIX}/share/doom
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

FAKE_FLAGS +=	gamesdir=${PREFIX}/bin \
		docdir=${PREFIX}/share/doc/prboom

.include <bsd.port.mk>
