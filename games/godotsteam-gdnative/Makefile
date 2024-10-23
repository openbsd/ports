COMMENT =	native interface for Godot3 to interact with Steam

V =		3.20
GCPP_V =	3.5.2

PKGNAME =	godotsteam-gdnative-${V}
DIST_TUPLE +=	github GodotSteam GodotSteam v${V}-gdn .
DIST_TUPLE +=	github godotengine godot-cpp \
		godot-${GCPP_V}-stable godot-cpp # MIT
DIST_TUPLE +=	github godotengine godot-headers \
		9e4dd67f928d7ae4e8d8bd77dce2219065a30b9a godot-cpp/godot-headers #MIT

CATEGORIES =	games

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} m steam_api

FIX_CRLF_FILES = godotsteam/godotsteam.h

# C++17
COMPILER =	base-clang ports-gcc

MODULES =	devel/scons

MODSCONS_FLAGS = CXX="${CXX}" \
		CCFLAGS="${CXXFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" \
		CPPFLAGS="${CFLAGS}" \
		CPPPATH=${LOCALBASE}/include/goldberg_emulator \
		platform=linuxbsd \
		production=yes \
		target=release

RUN_DEPENDS =	games/godot,-main
LIB_DEPENDS =	games/goldberg_emulator

MAKE_ENV +=	CXXFLAGS="${CXXFLAGS}" \
		LDFLAGS="${LDFLAGS}"

CXXFLAGS +=	-I${LOCALBASE}/include/goldberg_emulator
LDFLAGS +=	-L${LOCALBASE}/lib

post-extract:
	mkdir ${WRKSRC}/bin

pre-build:
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC}/godot-cpp \
		${MODSCONS_ENV} generate_bindings=yes platform=linux \
		-j ${MAKE_JOBS} ${ALL_TARGET}

do-install:
	${INSTALL_DATA_DIR}	${PREFIX}/lib/godot/gdnative/
	${INSTALL_DATA}		${WRKBUILD}/bin/linuxbsd/libgodotsteam.so \
				${PREFIX}/lib/godot/gdnative/

.include <bsd.port.mk>
