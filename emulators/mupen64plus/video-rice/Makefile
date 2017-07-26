# $OpenBSD: Makefile,v 1.14 2017/07/26 22:45:20 sthen Exp $

COMMENT =		n64 emulator opengl video plugin
REVISION =		3

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL SDL2 m png pthread ${COMPILER_LIBCXX}
LIB_DEPENDS =		devel/sdl2 graphics/png
MUPEN64PLUS_MOD = 	video-rice

.include <bsd.port.mk>
