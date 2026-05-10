COMMENT =	HoMM3 engine rewrite

CATEGORIES =	games
REVISION =	1

HOMEPAGE =	https://vcmi.eu/

MAINTAINER =	Kirill Bychkov <kirby@openbsd.org>

DIST_TUPLE += github vcmi vcmi 1.6.8 .
DIST_TUPLE += github fuzzylite fuzzylite \
		13b3122f5c353c0389ed4e66041d548c44ec9df6 AI/FuzzyLite
DIST_TUPLE += github google googletest \
		b514bdc898e2951020cbdca1304b75f5950d1f59 test/googletest

# GPLv2+
PERMIT_PACKAGE =	Yes

SHARED_LIBS =		vcmi	2.0

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_image SDL2_mixer SDL2_ttf
WANTLIB += avcodec avformat avutil boost_atomic-mt boost_charconv-mt
WANTLIB += boost_chrono-mt boost_container-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_locale-mt boost_program_options-mt
WANTLIB += boost_thread-mt c m minizip swresample swscale tbb
WANTLIB += z

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

CXXFLAGS +=		-DBOOST_STACKTRACE_GNU_SOURCE_NOT_REQUIRED

NO_TEST =		Yes

post-extract:
	sed -i 's,/bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/vcmibuilder

DEBUG_PACKAGES = 	${BUILD_PACKAGES}

.include <bsd.port.mk>
