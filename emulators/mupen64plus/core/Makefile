# $OpenBSD: Makefile,v 1.21 2018/11/26 18:57:27 naddy Exp $

COMMENT =		n64 emulator core
SHARED_LIBS =		mupen64plus 2.3 # 2.5
REVISION =		8

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL GLU c m ${COMPILER_LIBCXX} z freetype png pthread SDL2

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/sdl2 \
			graphics/png \
			print/freetype

MUPEN64PLUS_MOD =	core

MAKE_FLAGS +=		TARGET=libmupen64plus.so.${LIBmupen64plus_VERSION} \
			SONAME=libmupen64plus.so \
			NO_ASM=1

.include <bsd.port.mk>
