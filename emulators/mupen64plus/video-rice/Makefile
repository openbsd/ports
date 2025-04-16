COMMENT =		n64 emulator opengl video plugin

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		GL SDL2 m png pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/sdl2 graphics/png
MUPEN64PLUS_MOD = 	video-rice

MAKE_FLAGS +=		NO_ASM=1

.include <bsd.port.mk>
