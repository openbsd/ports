# $OpenBSD: Makefile,v 1.19 2019/07/12 20:46:09 sthen Exp $

COMMENT =		n64 emulator opengl video plugin

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		GL SDL2 m png pthread z ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/sdl2 graphics/png
MUPEN64PLUS_MOD = 	video-rice

.include <bsd.port.mk>
