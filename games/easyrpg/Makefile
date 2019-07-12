# $OpenBSD: Makefile,v 1.19 2019/07/12 20:46:16 sthen Exp $

COMMENT =	free interpreter for RPG Maker 2000/2003 and EasyRPG games
PKGNAME =	easyrpg-${GH_TAGNAME}
CATEGORIES =	games x11

HOMEPAGE =	https://easyrpg.org/

# GPLv3+
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_mixer c freetype harfbuzz
WANTLIB += lcf m mpg123 opusfile pixman-1 png sndfile speexdsp
WANTLIB += vorbisfile xmp z

COMPILER =	base-clang ports-clang ports-gcc

GH_ACCOUNT =	EasyRPG
GH_PROJECT =	Player
GH_TAGNAME =	0.5.3

MODULES +=	devel/cmake

LIB_DEPENDS =	audio/libsndfile \
		audio/libxmp \
		audio/mpg123 \
		audio/opusfile \
		audio/speexdsp \
		devel/harfbuzz \
		devel/sdl2 \
		devel/sdl2-mixer \
		games/liblcf \
		graphics/png

CONFIGURE_ENV =	CXXFLAGS="${CXXFLAGS} -I ${X11BASE}/include" \
		LDFLAGS="-L ${X11BASE}/lib"
MAKE_ENV =	${CONFIGURE_ENV}

# make test seems bogus, disabling it.
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/Player-${GH_TAGNAME}

.include <bsd.port.mk>
