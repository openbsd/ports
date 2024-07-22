COMMENT =	HoMM3 engine rewrite

CATEGORIES =	games

HOMEPAGE =	https://vcmi.eu/

MAINTAINER =	Kirill Bychkov <kirby@openbsd.org>

DIST_TUPLE += github vcmi vcmi 1.5.5 .
DIST_TUPLE += github fuzzylite fuzzylite \
		7aee562d6ca17f3cf42588ffb5116e03017c3c50 AI/FuzzyLite
DIST_TUPLE += github google googletest \
		b796f7d44681514f58a683a3a71ff17c94edb0c1 test/googletest

# GPLv2+
PERMIT_PACKAGE =	Yes

SHARED_LIBS =		vcmi	2.0

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_image SDL2_mixer SDL2_ttf
WANTLIB += avcodec avformat avutil boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_locale-mt
WANTLIB += boost_program_options-mt boost_thread-mt c m minizip
WANTLIB += swscale tbb z

# C++17
COMPILER = 		base-clang ports-gcc

MODULES =		devel/cmake

RUN_DEPENDS =		devel/desktop-file-utils \
			shells/bash \
			x11/gtk+4,-guic

LIB_DEPENDS =		archivers/minizip \
			devel/boost \
			devel/sdl2-image \
			devel/sdl2-mixer \
			devel/sdl2-ttf \
			devel/tbb \
			graphics/ffmpeg

# Add -pthread to "enable" boost threading support.
CONFIGURE_ARGS +=	-DCMAKE_CXX_FLAGS="${CXXFLAGS} \
				-I${X11BASE}/include -pthread" \
			-DENABLE_GITVERSION=OFF \
			-DENABLE_EDITOR=OFF \
			-DENABLE_LAUNCHER=OFF \
			-DENABLE_TEST=OFF \
			-Wno-dev

NO_TEST =		Yes

post-extract:
	sed -i 's,/bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/vcmibuilder

DEBUG_PACKAGES = 	${BUILD_PACKAGES}

.include <bsd.port.mk>
