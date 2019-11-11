# $OpenBSD: Makefile,v 1.20 2019/11/11 02:01:07 bentley Exp $

COMMENT =		n64 emulator video plugin

REVISION =		0

# GPLv2+
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

WANTLIB =		GL SDL2 boost_filesystem boost_system c m png pthread z ${COMPILER_LIBCXX}
LIB_DEPENDS =		devel/boost devel/sdl2 graphics/png

MUPEN64PLUS_MOD = 	video-glide64mk2

.include <bsd.port.mk>
