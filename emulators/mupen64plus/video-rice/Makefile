# $OpenBSD: Makefile,v 1.10 2015/11/04 16:41:46 bentley Exp $

COMMENT =		n64 emulator opengl video plugin
REVISION =		1

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL SDL2 m png pthread stdc++
LIB_DEPENDS =		devel/sdl2 graphics/png
MUPEN64PLUS_MOD = 	video-rice

.include <bsd.port.mk>
