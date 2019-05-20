# $OpenBSD: Makefile,v 1.5 2019/05/20 22:15:10 naddy Exp $

COMMENT =	free clone of Dink Smallwood game
DISTNAME =	freedink-109.6
REVISION =	1

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_gfx-1.0 SDL2_image SDL2_mixer
WANTLIB += SDL2_ttf c fontconfig freetype iconv intl m z

BUILD_DEPENDS =	archivers/zip \
		devel/help2man \
		devel/check \
		graphics/glm

LIB_DEPENDS =	devel/gettext,-runtime \
		devel/sdl2-image \
		devel/sdl2-mixer \
		devel/sdl2-gfx \
		devel/sdl2-ttf

RUN_DEPENDS =	devel/desktop-file-utils \
		games/freedink/data \
		x11/gtk+3,-guic

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-tests
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include/SDL2" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
