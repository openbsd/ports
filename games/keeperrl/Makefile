COMMENT =	dungeon builder game with roguelike elements

COMMIT =	cfdd70355cc500f8d1e068b33234cbac772b7a3f
COMMIT_DATE =	2024-05-24
PKGNAME =	keeperrl-1.0pl19
DIST_TUPLE +=	github miki151 keeperrl ${COMMIT} .

CATEGORIES =	games x11
HOMEPAGE =	https://keeperrl.com/

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv2, zlib, CC-BY-SA 2.0 (assets in data_free)
# CC-BY-SA 3.0 (data_free/images/icons.png)
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL SDL2 SDL2_image c curl m ogg
WANTLIB += openal steam_api theoradec vorbis vorbisfile z

FIX_CRLF_FILES =	miniunz.cpp

# C++14 (std=c++1y)
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	audio/libogg \
		audio/libvorbis \
		audio/openal \
		devel/sdl2-image \
		games/goldberg_emulator \
		multimedia/libtheora \
		net/curl

# NO_STEAMWORKS=1 build is missing Steam-related symbols as of 2024-02-29.
# XXX: retry later, remove dependency on Steam/goldberg_emulator when possible
MAKE_FLAGS =	LDFLAGS="${LDFLAGS}" \
		RELEASE=1

USE_GMAKE =		Yes

# Makefile uses CFLAGS for C++ build
# need to set STEAMAPI_API because not set in the port, cf. libcsteamworks
CFLAGS +=	-DENABLE_LOCAL_USER_DIR=1 \
		-DSTEAMAPI_API="extern \"C\"" \
		-I${LOCALBASE}/include
LDFLAGS +=	-L${LOCALBASE}/lib -L${X11BASE}/lib -lsteam_api

# put BUILD_* into version.h instead of via git (in gen_version.sh)
pre-configure:
	echo "#define BUILD_VERSION \"${COMMIT:C/^(.....).*/\1/}\"" \
		> ${WRKSRC}/version.h
	echo "#define BUILD_DATE \"${COMMIT_DATE}\"" >> ${WRKSRC}/version.h

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/keeper ${PREFIX}/bin/
	mkdir -p ${PREFIX}/share/keeperrl
	cp -R ${WRKBUILD}/{data_{contrib,free},server,*.txt} ${PREFIX}/share/keeperrl/
	rm ${PREFIX}/share/keeperrl/CMakeLists.txt

.include <bsd.port.mk>
