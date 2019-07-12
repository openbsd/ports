# $OpenBSD: Makefile,v 1.21 2019/07/12 20:46:09 sthen Exp $

COMMENT =		n64 emulator video plugin

REVISION =		1

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		GL SDL2 c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/sdl2

MUPEN64PLUS_MOD = 	video-glide64

MAKE_FLAGS +=		NO_ASM=1

.include <bsd.port.mk>
