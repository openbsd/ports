# heavy use of SSE with no alternative pathways for !x86 arches
ONLY_FOR_ARCHS =	amd64

COMMENT =		real-time strategy game engine for Beyond All Reason

# To keep version in sync with Beyond All Reason: use version information at:
#https://github.com/beyond-all-reason/BYAR-Chobby/blob/master/dist_cfg/config.json
# under setups->package->id: "manual-linux", see downloads->resources or
# launch->engine

V =			2025.06.12
PKGNAME =		recoil-rts-${V}

DIST_TUPLE +=		github beyond-all-reason RecoilEngine ${V} .
DIST_TUPLE +=		github mikke89 RmlUi \
			7a06f27db04fe5d13a5dacc19b2b4544673a4eca \
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
DIST_TUPLE +=		github gflags gflags \
			f8a0efe03aa69b3336d8e228b37d4ccb17324b88 \
			rts/lib/gflags # BSD-3
DIST_TUPLE +=		github sammycage lunasvg \
			d1eec967ec515395cfd669a1bfed8d5a6a119dde \
			rts/lib/lunasvg # MIT
DIST_TUPLE +=		github simdjson simdjson \
			0c0ce1bd48baa0677dc7c0945ea7cd1e8b52b297 \
			rts/lib/simdjson # Apache 2 / MIT
DIST_TUPLE +=		github wolfpld tracy \
			5d542dc09f3d9378d005092a4ad446bd405f819a \
			rts/lib/tracy # BSD-3
DIST_TUPLE +=		github rlcevg CircuitAI \
			7c0e69a3fc1aa84ecb3bc0b5df5930038fbb0634 \
			AI/Skirmish/BARb # GPL-2.0
DIST_TUPLE +=		github rlcevg CircuitAI \
			edc74149c281e2140f28c091ed74310c11611cc7 \
			AI/Skirmish/CircuitAI # GPL-2.0
DIST_TUPLE +=		github beyond-all-reason pr-downloader \
			8263d019b8b048f3939ddfbc2595d7f10ef45bf4 \
			tools/pr-downloader # GPL-2.0
DIST_TUPLE +=		github cameron314 readerwriterqueue \
			8e7627d18c2108aca178888d88514179899a044f \
			tools/pr-downloader/src/lib/readerwriterqueue # BSD-2

CATEGORIES =		games x11
HOMEPAGE =		https://beyond-all-reason.github.io/RecoilEngine/
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU IL SDL2 X11 Xcursor
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

# per upstream, build type RELWITHDEBINFO is preferred because of crashhandler
CONFIGURE_ARGS =	-DAI_TYPES="NATIVE" \
			-DCMAKE_BUILD_TYPE=RELWITHDEBINFO \
			-DCMAKE_C_FLAGS="${CFLAGS}" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=TRUE \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -lX11" \
			-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS}" \
			-DCMAKE_SYSTEM_NAME=OpenBSD \
			-DINSTALL_PORTABLE=FALSE \
			-DLUA_USE_BSD=1 \
			-DPRD_BINDIR="${PREFIX}/bin" \
			-DTRACY_ENABLE=OFF

CFLAGS +=		-I${LOCALBASE}/include \
			-I${X11BASE}/include
CXXFLAGS +=		-I${LOCALBASE}/include \
			-I${X11BASE}/include
# -ffp-exception-bevavior=strict: needed to prevent desyncs when connected
# with !OpenBSD in multiplayer
CXXFLAGS +=		-ffp-exception-behavior=strict
LDFLAGS +=		-L${LOCALBASE}/lib \
			-L${X11BASE}/lib

SUBST_VARS +=		V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/rts/build/cmake/ConfigureVersion.cmake

post-install:
	${SUBST_PROGRAM} ${FILESDIR}/beyond-all-reason \
		${PREFIX}/bin/beyond-all-reason

.include <bsd.port.mk>
