# $OpenBSD: Makefile,v 1.18 2019/02/26 22:10:55 bentley Exp $

COMMENT =		n64 emulator video plugin

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL SDL2 c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/sdl2

MUPEN64PLUS_MOD = 	video-glide64

MAKE_FLAGS +=		NO_ASM=1

.include <bsd.port.mk>
