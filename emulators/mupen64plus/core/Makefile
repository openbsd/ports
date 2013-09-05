# $OpenBSD: Makefile,v 1.6 2013/09/05 03:26:29 bentley Exp $

COMMENT =		n64 emulator core
SHARED_LIBS = 		mupen64plus 2.2 # 2.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL GLU c m stdc++ z freetype png pthread SDL
LIB_DEPENDS =		devel/sdl \
			graphics/png \
			print/freetype

MUPEN64PLUS_MOD = 	core

MAKE_FLAGS +=		TARGET=libmupen64plus.so.${LIBmupen64plus_VERSION}

.include <bsd.port.mk>
