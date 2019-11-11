# $OpenBSD: Makefile,v 1.18 2019/11/11 02:01:07 bentley Exp $

COMMENT =		n64 emulator video plugin

REVISION =		0

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		GL GLEW GLU SDL2 c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		graphics/glew>=1.12.0 \
			devel/sdl2

MUPEN64PLUS_MOD = 	video-z64

.include <bsd.port.mk>
