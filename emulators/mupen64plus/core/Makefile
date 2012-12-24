# $OpenBSD: Makefile,v 1.4 2012/12/24 09:23:07 bentley Exp $

COMMENT =		n64 emulator core
SHARED_LIBS = 		mupen64plus 2.1 # 2.0

REVISION =		0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		GL GLU c m stdc++ z freetype png pthread SDL
LIB_DEPENDS =		devel/sdl \
			graphics/png \
			print/freetype

MUPEN64PLUS_MOD = 	core

MAKE_FLAGS +=		TARGET=libmupen64plus.so.${LIBmupen64plus_VERSION}

.include <bsd.port.mk>
