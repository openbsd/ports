COMMENT =		n64 emulator core
SHARED_LIBS =		mupen64plus 2.4 # 2.5.9

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL GLU SDL2 c freetype m minizip png vulkan z

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/sdl2 \
			archivers/minizip \
			graphics/png \
			graphics/vulkan-loader

MUPEN64PLUS_MOD =	core

MAKE_FLAGS +=		TARGET=libmupen64plus.so.${LIBmupen64plus_VERSION} \
			SONAME=libmupen64plus.so \
			NO_ASM=1
.if ${MACHINE_ARCH} == aarch64
MAKE_FLAGS +=		HOST_CPU="aarch64"
.endif

.include <bsd.port.mk>
