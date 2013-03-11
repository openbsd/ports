# $OpenBSD: Makefile,v 1.5 2013/03/11 11:06:04 espie Exp $

COMMENT =		n64 emulator core
SHARED_LIBS = 		mupen64plus 2.1 # 2.0

REVISION =		0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL GLU c m stdc++ z freetype png pthread SDL
LIB_DEPENDS =		devel/sdl \
			graphics/png \
			print/freetype

MUPEN64PLUS_MOD = 	core

MAKE_FLAGS +=		TARGET=libmupen64plus.so.${LIBmupen64plus_VERSION}

.include <bsd.port.mk>
