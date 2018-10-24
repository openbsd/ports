# $OpenBSD: Makefile,v 1.19 2018/10/24 14:28:02 sthen Exp $

COMMENT =		n64 emulator core
SHARED_LIBS =		mupen64plus 2.3 # 2.5
REVISION =		6

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL GLU c m ${COMPILER_LIBCXX} z freetype png pthread SDL2

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/sdl2 \
			graphics/png \
			print/freetype

MUPEN64PLUS_MOD =	core

MAKE_FLAGS +=		TARGET=libmupen64plus.so.${LIBmupen64plus_VERSION} \
			SONAME=libmupen64plus.so

.include <bsd.port.mk>
