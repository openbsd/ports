# $OpenBSD: Makefile,v 1.8 2015/05/11 09:40:40 bentley Exp $

COMMENT =		n64 emulator opengl video plugin

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL SDL m png pthread stdc++
LIB_DEPENDS =		devel/sdl graphics/png
MUPEN64PLUS_MOD = 	video-rice

.include <bsd.port.mk>
