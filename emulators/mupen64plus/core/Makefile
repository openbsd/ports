COMMENT =		n64 emulator core
SHARED_LIBS =		mupen64plus 2.4 # 2.5.9
REVISION =		2

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		GL GLU c m ${COMPILER_LIBCXX} z freetype minizip png pthread SDL2

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/sdl2 \
			archivers/minizip \
			graphics/png

MUPEN64PLUS_MOD =	core

MAKE_FLAGS +=		TARGET=libmupen64plus.so.${LIBmupen64plus_VERSION} \
			SONAME=libmupen64plus.so \
			NO_ASM=1
.if ${MACHINE_ARCH} == aarch64
MAKE_FLAGS +=		HOST_CPU="aarch64"
.endif

.include <bsd.port.mk>
