# "#error Unknown endianess!" in src/openrct2/common.h
NOT_FOR_ARCHS =	${BE_ARCHS}

V =		0.4.12
TITLE_V =	0.4.6
OBJECTS_V =	1.4.6
OPENSFX_V =	1.0.5
OPENMSX_V =	1.5
REPLAYS_V =	0.0.79
COMMENT =	open source re-implementation of RollerCoaster Tycoon 2
DISTFILES =	openrct2-${V}{v${V}}.tar.gz
DISTFILES.a = 	title-sequences-${TITLE_V}{title-sequences}.zip
DISTFILES.b = 	objects-${OBJECTS_V}{objects}.zip
DISTFILES.c = 	opensfx-${OPENSFX_V}{opensound}.zip
DISTFILES.d =	openmsx-${OPENMSX_V}{openmusic}.zip
DISTFILES.e = 	replays-${REPLAYS_V}{replays}.zip
PKGNAME =	openrct2-${V}
CATEGORIES =	games x11

HOMEPAGE =	https://openrct2.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC GL SDL2 c crypto curl fontconfig
WANTLIB += freetype icuuc m ogg png speexdsp ssl vorbisfile z
WANTLIB += zip

# Upstream does not make proper source releases.
# See: https://github.com/OpenRCT2/OpenRCT2/issues/5887
# Find repos and version numbers in top-level CMakeLists.txt
BASE = 		https://github.com/OpenRCT2/
SITES =		${BASE}OpenRCT2/archive/refs/tags/
SITES.a =	${BASE}title-sequences/releases/download/v${TITLE_V}/
SITES.b =	${BASE}objects/releases/download/v${OBJECTS_V}/
SITES.c =	${BASE}OpenSoundEffects/releases/download/v${OPENSFX_V}/
SITES.d =	${BASE}OpenMusic/releases/download/v${OPENMSX_V}/
SITES.e =	${BASE}replays/releases/download/v${REPLAYS_V}/

EXTRACT_ONLY =	openrct2-$V.tar.gz

# C++17
COMPILER =	base-clang ports-gcc

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

MODULES =	devel/cmake

BUILD_DEPENDS =	archivers/unzip \
		textproc/nlohmann-json

LIB_DEPENDS =	archivers/libzip \
		audio/flac \
		audio/libvorbis \
		audio/speexdsp \
		devel/sdl2 \
		graphics/png \
		net/curl \
		textproc/icu4c

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

CONFIGURE_ARGS =	-DDOWNLOAD_OBJECTS=OFF \
			-DDOWNLOAD_OPENMSX=OFF \
			-DDOWNLOAD_OPENSFX=OFF \
			-DDOWNLOAD_REPLAYS=OFF \
			-DDOWNLOAD_TITLE_SEQUENCES=OFF \
			-DDISABLE_DISCORD_RPC=ON \
			-DOPENRCT2_BRANCH=master \
			-DOPENRCT2_COMMIT_SHA1_SHORT="76ca840"

# Downloads things. See: https://github.com/OpenRCT2/OpenRCT2/issues/5710
NO_TEST =	Yes

DIST_SUBDIR =	openrct2

WRKDIST =	${WRKDIR}/OpenRCT2-${V}

post-extract:
	mkdir -p ${WRKSRC}/testdata
	unzip -q ${FULLDISTDIR}/title-sequences-${TITLE_V}.zip -d \
		${WRKSRC}/data/sequence
	unzip -q ${FULLDISTDIR}/objects-${OBJECTS_V}.zip -d \
		${WRKSRC}/data/object
	unzip -q ${FULLDISTDIR}/opensfx-${OPENSFX_V}.zip -d \
		${WRKSRC}/data/object
	unzip -q ${FULLDISTDIR}/openmsx-${OPENMSX_V}.zip -d \
		${WRKSRC}/data/object
	unzip -q ${FULLDISTDIR}/replays-${REPLAYS_V}.zip -d \
		${WRKSRC}/testdata/replays

.include <bsd.port.mk>
