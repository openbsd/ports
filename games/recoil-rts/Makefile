# heavy use of SSE with no alternative pathways for !x86 arches
ONLY_FOR_ARCHS =	amd64

COMMENT =		real-time strategy game engine for Beyond All Reason

# To keep version in sync with Beyond All Reason: use version information at:
#https://github.com/beyond-all-reason/BYAR-Chobby/blob/master/dist_cfg/config.json
# under setups->package->id: "manual-linux", see downloads->resources or
# launch->engine

V =			2026.06.12
PKGNAME =		recoil-rts-${V}

DIST_TUPLE +=		github beyond-all-reason RecoilEngine ${V} .
DIST_TUPLE +=		github mikke89 RmlUi \
			2230d1a6e8e0848ed87a5761e2a5160b2a175ba4 \
			rts/lib/RmlUi # MIT
DIST_TUPLE +=		github USCiLab cereal \
			d1fcec807b372f04e4c1041b3058e11c12853e6e \
			rts/lib/cereal # BSD-3
DIST_TUPLE +=		github skypjack entt \
			e4ccb878f47245a319704912435d3c89f34ad6be \
			rts/lib/entt # MIT
DIST_TUPLE +=		github spnda fastgltf \
			eebda658317cd907d6cdf9c9ed7e40b96e8453dd \
			rts/lib/fastgltf # MIT
DIST_TUPLE +=		github fmtlib fmt \
			407c905e45ad75fc29bf0f9bb7c5c2fd3475976f \
			rts/lib/fmt # MIT
DIST_TUPLE +=		github gflags gflags \
			33bb3461e10864b5406353d3a1fb7ff34c2314b8 \
			rts/lib/gflags # BSD-3
DIST_TUPLE +=		github sammycage lunasvg \
			f8aabfb444bb37f69df7290790f57e4a27730a93 \
			rts/lib/lunasvg # MIT
DIST_TUPLE +=		github sammycage plutovg \
			5e4712cf873b0c7829a4a6157763e2ad3ac49164 \
			rts/lib/lunasvg/plutovg # MIT
DIST_TUPLE +=		github boostorg nowide \
			de3bb558ebe3dd6d22a03b4beb92fbe05470ca1c \
			rts/lib/nowide # BSL-1.0
DIST_TUPLE +=		github simdjson simdjson \
			0c0ce1bd48baa0677dc7c0945ea7cd1e8b52b297 \
			rts/lib/simdjson # Apache 2 / MIT
DIST_TUPLE +=		github DLTcollab sse2neon \
			8721e9799e0d01b80ba8e8e34636cb49997560c2 \
			rts/lib/sse2neon # MIT
DIST_TUPLE +=		github RecoilEngine streflop \
			9867c6991261e102726e19dafadcc51eafb12118 \
			rts/lib/streflop # LGPL
DIST_TUPLE +=		github wolfpld tracy \
			5d542dc09f3d9378d005092a4ad446bd405f819a \
			rts/lib/tracy # BSD-3
DIST_TUPLE +=		github rlcevg CircuitAI \
			0ef36267633d6c1b2f6408a8d8a59fff38745dc3 \
			AI/Skirmish/BARb # GPL-2.0
DIST_TUPLE +=		github rlcevg CircuitAI \
			edc74149c281e2140f28c091ed74310c11611cc7 \
			AI/Skirmish/CircuitAI # GPL-2.0
DIST_TUPLE +=		github beyond-all-reason pr-downloader \
			dc352410644b101d44609263bee398ac3305d223 \
			tools/pr-downloader # GPL-2.0
DIST_TUPLE +=		github cameron314 readerwriterqueue \
			8e7627d18c2108aca178888d88514179899a044f \
			tools/pr-downloader/src/lib/readerwriterqueue # BSD-2

CATEGORIES =		games x11
HOMEPAGE =		https://beyond-all-reason.github.io/RecoilEngine/
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL IL SDL2 X11 Xcursor
WANTLIB += Xfixes Xrender c curl execinfo expat fontconfig
WANTLIB += freetype jsoncpp m minizip ogg openal vorbis
WANTLIB += vorbisfile z

FIX_CRLF_FILES = \
	tools/pr-downloader/src/lib/readerwriterqueue/benchmarks/systemtime.h

# C++11 or newer
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		archivers/p7zip \
			converters/libiconv \
			devel/boost \
			shells/bash \
			textproc/asciidoc
RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info
LIB_DEPENDS =		archivers/minizip \
			audio/libvorbis \
			audio/openal \
			devel/jsoncpp \
			devel/sdl2 \
			graphics/DevIL \
			net/curl

CONFIGURE_ARGS =	-DAI_TYPES="NATIVE" \
			-DCMAKE_BUILD_TYPE=RELEASE \
			-DCMAKE_C_FLAGS="${CFLAGS}" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=TRUE \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -lX11" \
			-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS}" \
			-DINSTALL_PORTABLE=FALSE \
			-DLUA_USE_BSD=1 \
			-DPRD_BINDIR="${PREFIX}/bin" \
			-DTRACY_ENABLE=OFF \
			-DUSE_MIMALLOC=OFF

# Avoid duplicate base content detected (if installed).
TEST_ENV +=		SPRING_ISOLATED=${WRKBUILD}

CFLAGS +=		-I${LOCALBASE}/include \
			-I${X11BASE}/include
CXXFLAGS +=		-I${LOCALBASE}/include \
			-I${X11BASE}/include
# -ffp-exception-behavior=strict: needed to prevent desyncs when connected
# with !OpenBSD in multiplayer
CXXFLAGS +=		-ffp-exception-behavior=strict
LDFLAGS +=		-L${LOCALBASE}/lib \
			-L${X11BASE}/lib

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

SUBST_VARS +=		V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/rts/build/cmake/ConfigureVersion.cmake

post-install:
	${SUBST_PROGRAM} ${FILESDIR}/beyond-all-reason \
		${PREFIX}/bin/beyond-all-reason

.include <bsd.port.mk>
