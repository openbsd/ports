# $OpenBSD: Makefile,v 1.8 2014/03/26 08:45:33 sthen Exp $

COMMENT =		n64 emulator core
SHARED_LIBS =		mupen64plus 2.2 # 2.0
REVISION =		1

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL GLU c m stdc++ z freetype png pthread SDL
LIB_DEPENDS =		devel/sdl \
			graphics/png \
			print/freetype

MUPEN64PLUS_MOD =	core

# PIC #ifdef in src/r4300/x86/rjump.c:104 (taken as a result of PIE by
# default) needs newer gcc
MODULES =		gcc4
MODGCC4_ARCHS =		i386
MODGCC4_LANGS =		c c++

MAKE_FLAGS +=		TARGET=libmupen64plus.so.${LIBmupen64plus_VERSION}

.include <bsd.port.mk>
