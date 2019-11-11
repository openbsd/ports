# $OpenBSD: Makefile,v 1.20 2019/11/11 02:01:07 bentley Exp $

COMMENT =		n64 emulator opengl video plugin

REVISION =		0

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		GL SDL2 m png pthread z ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/sdl2 graphics/png
MUPEN64PLUS_MOD = 	video-rice

.include <bsd.port.mk>
