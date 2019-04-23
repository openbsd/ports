# $OpenBSD: Makefile,v 1.19 2019/04/23 08:08:23 bentley Exp $

COMMENT =		n64 emulator video plugin

REVISION =		0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL SDL2 c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/sdl2

MUPEN64PLUS_MOD = 	video-glide64

MAKE_FLAGS +=		NO_ASM=1

.include <bsd.port.mk>
