# $OpenBSD: Makefile,v 1.3 2012/08/13 06:53:55 bentley Exp $

COMMENT =		n64 emulator core
SHARED_LIBS = 		mupen64plus 2.1 # 2.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		GL GLU c m stdc++ z freetype png SDL
LIB_DEPENDS =		devel/sdl \
			graphics/png \
			print/freetype

MUPEN64PLUS_MOD = 	core

MAKE_FLAGS =		TARGET=libmupen64plus.so.${LIBmupen64plus_VERSION} \
			V=1

.include <bsd.port.mk>
