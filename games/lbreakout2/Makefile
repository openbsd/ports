COMMENT =	breakout game with many levels, powerups, good graphics

DISTNAME =	lbreakout2-2.6.5
CATEGORIES =	games x11
REVISION =	3

HOMEPAGE =	https://lgames.sourceforge.net/index.php?action=show_project&project=LBreakout2

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =  SDL SDL_mixer c iconv intl m png>=9.0 pthread z

SITES =		${SITE_SOURCEFORGE:=lgames/}

LIB_DEPENDS =	devel/sdl-mixer \
		graphics/png
RUN_DEPENDS =	devel/desktop-file-utils

USE_GMAKE =	Yes

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/games

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-docdir=${PREFIX}/share/doc
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lintl -liconv"

.include <bsd.port.mk>
