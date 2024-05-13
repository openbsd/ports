# heavy use of SSE with no alternative pathways for !x86 arches
ONLY_FOR_ARCHS =	amd64

COMMENT =		real-time strategy game engine for Beyond All Reason

# To keep version in sync with Beyond All Reason: use version information at:
# https://github.com/beyond-all-reason/BYAR-Chobby/blob/master/dist_cfg/config.json
# under setups->package->id: "manual-linux", see downloads->resources or
# launch->engine
MJ =			105
# don't reduce ${MN} to just single digit to avoid update-plist going berserk
MN =			1.1
BLD =			2449
HASH =			gf1234a9
V =			${MJ}.${MN}pl${BLD}
# ${IN_ENGINE_V} is what recoil uses/displays internally
IN_ENGINE_V =		${MJ}.${MN:C/\..*//}

# Prefix '0.' to avoid future EPOCH. Upstream has indicated future versioning
# with YY.MM; once that has happened, remove '0.'
PKGNAME =		recoil-rts-0.${V}

DIST_STRING =		spring_bar_%7BBAR${MJ}%7D${MAJ}.${MN}-${BLD}-${HASH}

DIST_TUPLE +=		github beyond-all-reason spring ${DIST_STRING} .
DIST_TUPLE +=		github USCiLab cereal d1fcec807b372f04e4c1041b3058e11c12853e6e \
			rts/lib/cereal # BSD-3
DIST_TUPLE +=		github skypjack entt e4ccb878f47245a319704912435d3c89f34ad6be \
			rts/lib/entt # MIT
DIST_TUPLE +=		github gflags gflags f8a0efe03aa69b3336d8e228b37d4ccb17324b88 \
			rts/lib/gflags # BSD-3
DIST_TUPLE +=		github wolfpld tracy 5a1f5371b792c12aea324213e1dc738b2923ae21 \
			rts/lib/tracy # BSD-3
DIST_TUPLE +=		github rlcevg CircuitAI \
			c289f95936fc6fb1310a78124dba8782b543293e AI/Skirmish/BARb \
			# GPL-2.0
DIST_TUPLE +=		github rlcevg CircuitAI \
			ea8ad431afc8ea5208aac21d3063ead9fc54de7c AI/Skirmish/CircuitAI \
			# GPL-2.0
DIST_TUPLE +=		github spring SpringMapConvNG \
			0ddd86eaa8871dc0833c69f931f55cd856c5009d tools/mapcompile \
			# GPL-2.0
DIST_TUPLE +=		github beyond-all-reason pr-downloader \
			bdac30330eccb5ec73da299922491f3f4ee8debe tools/pr-downloader \
			# GPL-2.0
DIST_TUPLE +=		github cameron314 readerwriterqueue \
			8e7627d18c2108aca178888d88514179899a044f \
			tools/pr-downloader/src/lib/readerwriterqueue # BSD-2

CATEGORIES =		games x11
HOMEPAGE =		https://beyond-all-reason.github.io/spring/
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU IL ILU SDL2 X11 Xcursor
WANTLIB += c curl execinfo fontconfig freetype jsoncpp m minizip ogg
WANTLIB += openal vorbis vorbisfile z

FIX_CRLF_FILES =	tools/pr-downloader/src/lib/readerwriterqueue/benchmarks/systemtime.h

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
			graphics/glew \
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
			-DLUA_USE_BSD=1 \
			-DPRD_BINDIR="${PREFIX}/bin" \
			-DTRACY_ENABLE=OFF

CFLAGS +=		-I${LOCALBASE}/include \
			-I${X11BASE}/include
CXXFLAGS +=		-I${LOCALBASE}/include \
			-I${X11BASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib \
			-L${X11BASE}/lib

WRKDIST =		${WRKDIR}/spring-${DIST_STRING:S/%7B/-/g:S/%7D/-/g}

SUBST_VARS +=		IN_ENGINE_V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/rts/build/cmake/ConfigureVersion.cmake

.include <bsd.port.mk>
