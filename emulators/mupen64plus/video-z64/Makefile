# $OpenBSD: Makefile,v 1.16 2019/02/26 22:10:55 bentley Exp $

COMMENT =		n64 emulator video plugin

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL GLEW GLU SDL2 c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		graphics/glew>=1.12.0 \
			devel/sdl2

MUPEN64PLUS_MOD = 	video-z64

.include <bsd.port.mk>
