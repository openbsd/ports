# $OpenBSD: Makefile,v 1.23 2019/07/12 20:46:09 sthen Exp $

COMMENT =		n64 emulator core
SHARED_LIBS =		mupen64plus 2.4 # 2.5.9

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		GL GLU c m ${COMPILER_LIBCXX} z freetype png pthread SDL2

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/sdl2 \
			graphics/png

MUPEN64PLUS_MOD =	core

MAKE_FLAGS +=		TARGET=libmupen64plus.so.${LIBmupen64plus_VERSION} \
			SONAME=libmupen64plus.so \
			NO_ASM=1

.include <bsd.port.mk>
