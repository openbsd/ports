# $OpenBSD: Makefile,v 1.22 2019/11/11 02:01:07 bentley Exp $

COMMENT =		n64 emulator video plugin

REVISION =		2

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		GL SDL2 c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/sdl2

MUPEN64PLUS_MOD = 	video-glide64

MAKE_FLAGS +=		NO_ASM=1

.include <bsd.port.mk>
