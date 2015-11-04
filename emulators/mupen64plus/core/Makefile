# $OpenBSD: Makefile,v 1.13 2015/11/04 16:41:45 bentley Exp $

COMMENT =		n64 emulator core
SHARED_LIBS =		mupen64plus 2.3 # 2.5
REVISION =		2

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL GLU c m stdc++ z freetype png pthread SDL2
LIB_DEPENDS =		devel/sdl2 \
			graphics/png \
			print/freetype

MUPEN64PLUS_MOD =	core

# PIC #ifdef in src/r4300/x86/rjump.c:104 (taken as a result of PIE by
# default) needs newer gcc
MODULES =		gcc4
MODGCC4_ARCHS =		i386
MODGCC4_LANGS =		c c++

MAKE_FLAGS +=		TARGET=libmupen64plus.so.${LIBmupen64plus_VERSION} \
			SONAME=libmupen64plus.so

.include <bsd.port.mk>
