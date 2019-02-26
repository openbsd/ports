# $OpenBSD: Makefile,v 1.18 2019/02/26 22:10:55 bentley Exp $

COMMENT =		n64 emulator video plugin

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

COMPILER =		base-clang ports-gcc

WANTLIB =		GL SDL2 boost_filesystem boost_system c m png pthread z ${COMPILER_LIBCXX}
LIB_DEPENDS =		devel/boost devel/sdl2 graphics/png

MUPEN64PLUS_MOD = 	video-glide64mk2

.include <bsd.port.mk>
