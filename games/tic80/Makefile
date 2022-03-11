# Upstream does not want to support big endian.
# See: https://github.com/nesbox/TIC-80/pull/1057/
NOT_FOR_ARCHS =	${BE_ARCHS}

V =		0.90.1706
COMMENT =	fantasy computer to make, play and share tiny games (TIC-80)
DISTNAME =	TIC-80-${V}
PKGNAME =	${DISTNAME:S/TIC-80/tic80/}
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	games x11

HOMEPAGE =	https://tic80.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# TIC-80 itself: MIT
# Built-in dependencies:
#   argparse: MIT
#   blip-buf: LGPLv2.1 only
#   fennel: MIT
#   lpeg: MIT
#   moonscript: MIT
#   squirrel: MIT
#   wren: MIT
#   zip: Unlicense (This is not libzip!)
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB} SDL2 c curl
WANTLIB += duktape gif lua5.3 m png z

MASTER_SITES =	https://github.com/ibara/tic80-openbsd/releases/download/v${V}/

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/lua
MODLUA_VERSION =	5.3

LIB_DEPENDS =	devel/sdl2 \
		graphics/giflib \
		graphics/png \
		lang/duktape \
		net/curl

RUN_DEPENDS =	devel/desktop-file-utils

# Remember to update VERSION_HASH when updating!
CONFIGURE_ARGS =	-DBUILD_PRO=ON \
			-DCMAKE_C_FLAGS="${CFLAGS} `sdl2-config --cflags` -I${MODLUA_INCL_DIR}" \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} `sdl2-config --libs`" \
			-DVERSION_HASH=a838293

NO_TEST =	Yes

# Install the cart creation binaries.
post-install:
	${INSTALL_PROGRAM} \
		${WRKBUILD}/bin/{bin2txt,cart2prj,player-sdl,prj2cart,xplode} \
			${PREFIX}/bin

.include <bsd.port.mk>
