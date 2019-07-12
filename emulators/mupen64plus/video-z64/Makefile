# $OpenBSD: Makefile,v 1.17 2019/07/12 20:46:09 sthen Exp $

COMMENT =		n64 emulator video plugin

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		GL GLEW GLU SDL2 c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		graphics/glew>=1.12.0 \
			devel/sdl2

MUPEN64PLUS_MOD = 	video-z64

.include <bsd.port.mk>
