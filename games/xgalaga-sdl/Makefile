# $OpenBSD: Makefile,v 1.2 2019/07/12 20:46:27 sthen Exp $

COMMENT =		clone of Galaga, 2D space shooter

V =			2.1.1.0
DISTNAME =		xgalaga-sdl-${V}-sdl
PKGNAME =		xgalaga-sdl-${V}

CATEGORIES =		games

HOMEPAGE =		http://sourceforge.net/projects/xgalaga-sdl/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += SDL SDL_gfx SDL_image SDL_mixer SDL_ttf c pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=xgalaga-sdl/}
EXTRACT_SUFX =		.tar.bz2

LIB_DEPENDS =		devel/sdl-gfx \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--datadir=${PREFIX}/share/xgalaga-sdl
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
