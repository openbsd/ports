COMMENT =		n64 emulator video plugin

# GPLv2+
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

WANTLIB =		GL SDL2 c m png pthread z ${COMPILER_LIBCXX}
LIB_DEPENDS =		devel/sdl2 graphics/png

MUPEN64PLUS_MOD = 	video-glide64mk2

.include <bsd.port.mk>
