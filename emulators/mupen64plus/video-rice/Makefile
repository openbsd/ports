# $OpenBSD: Makefile,v 1.15 2017/09/25 21:25:19 sthen Exp $

COMMENT =		n64 emulator opengl video plugin
REVISION =		4

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL SDL2 m png pthread z ${COMPILER_LIBCXX}
LIB_DEPENDS =		devel/sdl2 graphics/png
MUPEN64PLUS_MOD = 	video-rice

.include <bsd.port.mk>
