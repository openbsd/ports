V =		0.9.5
COMMENT =	open source engine remake of The Settlers 2 (s25client)
DISTNAME =	s25client_src_v${V}
PKGNAME =	returntotheroots-${V}

CATEGORIES =	games x11

ONLY_FOR_ARCHS =	i386 amd64

HOMEPAGE =	https://www.siedler25.org/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_mixer boost_atomic-mt boost_charconv-mt
WANTLIB += boost_chrono-mt boost_container-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_iostreams-mt boost_locale-mt
WANTLIB += boost_nowide-mt boost_program_options-mt boost_random-mt
WANTLIB += boost_regex-mt boost_thread-mt bz2 c execinfo iconv m miniupnpc
WANTLIB += samplerate ${MODLUA_WANTLIB}

# dlopen'd:
WANTLIB += GL

SITES =	https://github.com/Return-To-The-Roots/s25client/releases/download/v${V}/

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/lua
MODLUA_VERSION =	5.2
MODCMAKE_LDFLAGS =	-lexecinfo

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		archivers/bzip2 \
			audio/libsamplerate \
			devel/boost \
			devel/sdl2-mixer \
			net/miniupnp/miniupnpc

CONFIGURE_ARGS =	-DRTTR_BUILD_UPDATER=OFF \
			-DRTTR_ENABLE_WERROR:Bool=OFF \
			-DRTTR_EXTRA_BINDIR="${LOCALBASE}/libexec/s25rttr" \
			-DRTTR_USE_SYSTEM_LIBSAMPLERATE=ON

WRKDIST =		${WRKDIR}/s25client_v${V}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/external/libutil/libs/common/src/getExecutablePath.cpp

.include <bsd.port.mk>
