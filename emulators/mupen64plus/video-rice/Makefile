# $OpenBSD: Makefile,v 1.5 2013/03/11 11:06:04 espie Exp $

COMMENT =		n64 emulator opengl video plugin

REVISION =		0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL SDL m png pthread stdc++ z
LIB_DEPENDS =		devel/sdl graphics/png
MUPEN64PLUS_MOD = 	video-rice

.include <bsd.port.mk>
