# $OpenBSD: Makefile,v 1.7 2014/04/17 07:03:59 bentley Exp $

COMMENT =		n64 emulator opengl video plugin

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
REVISION =		1

WANTLIB =		GL SDL m png pthread stdc++
LIB_DEPENDS =		devel/sdl graphics/png
MUPEN64PLUS_MOD = 	video-rice

.include <bsd.port.mk>
