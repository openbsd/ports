# $OpenBSD: Makefile,v 1.22 2013/03/31 21:09:32 bentley Exp $

COMMENT=	enhanced clone of Id Software's Doom game; multiplayer
DISTNAME=	prboom-2.5.0
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=prboom/}

HOMEPAGE=	http://prboom.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =	SDL c m pthread z GL GLU SDL_mixer>=3 SDL_net>=1 png>=4

LIB_DEPENDS =	devel/sdl-mixer \
		devel/sdl-net \
		graphics/png

CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-cpu-opt \
		--with-waddir=${TRUEPREFIX}/share/doom
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

FAKE_FLAGS +=	gamesdir=${PREFIX}/bin \
		docdir=${PREFIX}/share/doc/prboom

.include <bsd.port.mk>
