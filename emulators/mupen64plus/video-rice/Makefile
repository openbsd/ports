# $OpenBSD: Makefile,v 1.13 2017/07/16 19:18:53 espie Exp $

COMMENT =		n64 emulator opengl video plugin
REVISION =		2

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL SDL2 m png pthread ${COMPILER_LIBCXX}
LIB_DEPENDS =		devel/sdl2 graphics/png
MUPEN64PLUS_MOD = 	video-rice

.include <bsd.port.mk>
