# $OpenBSD: Makefile,v 1.12 2017/04/10 11:45:28 sthen Exp $

COMMENT =		n64 emulator opengl video plugin
REVISION =		2

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL SDL2 m png pthread ${LIBCXX}
LIB_DEPENDS =		devel/sdl2 graphics/png
MUPEN64PLUS_MOD = 	video-rice

.include <bsd.port.mk>
