# $OpenBSD: Makefile,v 1.18 2018/01/03 08:26:12 bentley Exp $

COMMENT =		n64 emulator core
SHARED_LIBS =		mupen64plus 2.3 # 2.5
REVISION =		5

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL GLU c m ${COMPILER_LIBCXX} z freetype png pthread SDL2
LIB_DEPENDS =		devel/sdl2 \
			graphics/png \
			print/freetype

MUPEN64PLUS_MOD =	core

MAKE_FLAGS +=		TARGET=libmupen64plus.so.${LIBmupen64plus_VERSION} \
			SONAME=libmupen64plus.so

.include <bsd.port.mk>
