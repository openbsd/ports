COMMENT =	open source engine recreation for Diablo 1 game
PKGNAME =	${DISTNAME:L}
CATEGORIES =	games x11

GH_ACCOUNT =	diasurgical
GH_PROJECT =	devilutionX
GH_TAGNAME =	1.5.1

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

SITES =		${SITES_GITHUB}
SITES.a =	https://github.com/diasurgical/devilutionX/releases/download/${GH_TAGNAME}/

DISTFILES =	${GH_DISTFILE}
DISTFILES.a = 	devilutionx-src-${GH_TAGNAME}{devilutionx-src}.tar.xz

# Sustainable Use License 1.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_image SDL_audiolib c fmt
WANTLIB += m mpq smackerdec sodium

# C++20
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/asio \
		devel/gettext,-tools \
		textproc/simpleini

LIB_DEPENDS =	archivers/libmpq \
		audio/libsmackerdec \
		audio/sdl2-audiolib \
		devel/fmt \
		devel/sdl2-image \
		security/libsodium

CONFIGURE_ARGS =	-DCMAKE_BUILD_TYPE=Release \
			-DBUILD_TESTING=OFF \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -L${LOCALBASE}/lib -lSDL2_image -lsmackerdec -lmpq" \
			-DDEBUG=OFF \
			-DDEVILUTIONX_SYSTEM_BZIP2=ON \
			-DDEVILUTIONX_SYSTEM_LIBFMT=ON \
			-DDEVILUTIONX_SYSTEM_LIBPNG=ON \
			-DDEVILUTIONX_SYSTEM_SDL_AUDIOLIB=ON \
			-DDEVILUTIONX_SYSTEM_SDL_IMAGE=ON \
			-DDEVILUTIONX_SYSTEM_SIMPLEINI=ON \
			-DDEVILUTIONX_SYSTEM_LIBSODIUM=ON \
			-DDEVILUTIONX_SYSTEM_ZLIB=ON \
			-DDISABLE_LTO=ON \
			-DDISABLE_ZERO_TIER=ON \
			-DSDL2_INCLUDE_DIR=${LOCALBASE}/include/SDL2 \
			-DVERSION_NUM="${GH_TAGNAME}"

NO_TEST =	Yes

FIX_CRLF_FILES =	3rdParty/libsmackerdec/CMakeLists.txt \
			3rdParty/simpleini/CMakeLists.txt \
			CMake/Dependencies.cmake \
			Source/CMakeLists.txt \
			Source/storm/storm_svid.cpp

# No install target
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/diasurgical
	${INSTALL_DATA_DIR} ${PREFIX}/share/diasurgical/devilutionx
	cp -R ${WRKDIR}/devilutionx-src-${GH_TAGNAME}/Packaging/resources/assets \
		${PREFIX}/share/diasurgical/devilutionx
	${INSTALL_DATA} ${WRKDIR}/devilutionx-src-${GH_TAGNAME}/dist/devilutionx.mpq \
		${PREFIX}/share/diasurgical/devilutionx
	${INSTALL_DATA} ${WRKDIST}/LICENSE.md ${PREFIX}/share/diasurgical/devilutionx
	
	${INSTALL_PROGRAM} ${WRKBUILD}/devilutionx ${PREFIX}/bin

.include <bsd.port.mk>
