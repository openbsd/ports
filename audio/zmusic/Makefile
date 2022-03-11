COMMENT =		gzdoom music library as standalone form for reuse

PKGNAME =		${DISTNAME:L}

GH_ACCOUNT =		coelckers
GH_PROJECT =		ZMusic
GH_TAGNAME =		1.1.3

SHARED_LIBS +=		zmusic		0.0 # 1.1.0
SHARED_LIBS +=		zmusiclite	0.0 # 1.1.0

CATEGORIES =		audio

HOMEPAGE =		https://zdoom.org

MAINTAINER =		Timo Myyra <timo.myyra@bittivirhe.fi>

# GPL3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} fluidsynth m mpg123 sndfile z

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DDYN_FLUIDSYNTH=NO \
			-DDYN_MPG123=NO \
			-DDYN_SNDFILE=NO

LIB_DEPENDS =		audio/fluidsynth \
			audio/libsndfile \
			audio/mpg123

NO_TEST =		Yes

.include <bsd.port.mk>
