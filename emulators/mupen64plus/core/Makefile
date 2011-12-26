# $OpenBSD: Makefile,v 1.2 2011/12/26 22:58:48 bentley Exp $

COMMENT =		n64 emulator core
SHARED_LIBS = 		mupen64plus 2.0

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

.include <bsd.port.mk>
