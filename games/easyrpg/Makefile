# $OpenBSD: Makefile,v 1.17 2017/09/09 19:55:11 jeremy Exp $

V =		0.5.2
COMMENT =	free interpreter for RPG Maker 2000/2003 and EasyRPG games
DISTNAME =	${PKGNAME}{${V}}
PKGNAME =	easyrpg-${V}
CATEGORIES =	games x11

HOMEPAGE =	https://easyrpg.org/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_mixer c freetype harfbuzz
WANTLIB += lcf m mpg123 opusfile pixman-1 png sndfile speexdsp
WANTLIB += vorbisfile xmp z

COMPILER =	base-clang ports-clang ports-gcc

MASTER_SITES =	https://github.com/EasyRPG/Player/archive/

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

WRKDIST =	${WRKDIR}/Player-${V}

.include <bsd.port.mk>
