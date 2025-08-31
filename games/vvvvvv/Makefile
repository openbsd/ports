# BE not supported at the moment, see GitHub PR #461.
# Severe display artifacts reported on powerpc
NOT_FOR_ARCHS=${BE_ARCHS}

COMMENT =	gravity-reversing platforming game
V =		2.4.3
PKGNAME =	vvvvvv-${V}

DIST_TUPLE +=	github TerryCavanagh VVVVVV ${V} .
DIST_TUPLE +=	github lvandeve lodepng \
		18964554bc769255401942e0e6dfd09f2fab2093 \
		third_party/lodepng # zlib
DIST_TUPLE +=	github icculus physfs \
		bfa7997c671957eb0a340ff1cf3c634e6269904a \
		third_party/physfs # zlib
DIST_TUPLE +=	github leethomason tinyxml2 \
		e45d9d16d430a3f5d3eee9fe40d5e194e1e5e63a \
		third_party/tinyxml2 # zlib
DIST_TUPLE +=	github FNA-XNA FAudio \
		38e9da7264641c9cc69a80d09082f166d9b8eaf9 \
		third_party/FAudio # zlib
DIST_TUPLE +=	github Mashpoe c-hashmap \
		dedf70e0a769bc52a17a36da840d96770fc26d12 \
		third_party/c-hashmap # BSD-3
DIST_TUPLE +=	github Tehreer SheenBidi \
		83f77108a2873600283f6da4b326a2dca7a3a7a6 \
		third_party/SheenBidi # Apache-2.0

CATEGORIES =	games x11
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# custom zlib-based license, non-commercial
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 c m

# C++ (uses C++11 extension 'long long')
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake
LIB_DEPENDS =	devel/sdl2

NO_TEST =	Yes
WRKSRC =	${WRKDIST}/desktop_version

do-install:
	${INSTALL_PROGRAM}	${WRKBUILD}/VVVVVV ${PREFIX}/bin/
	${INSTALL_DATA_DIR}	${PREFIX}/share/vvvvvv
	${INSTALL_DATA}		${WRKDIST}/LICENSE.md ${PREFIX}/share/vvvvvv/

.include <bsd.port.mk>
