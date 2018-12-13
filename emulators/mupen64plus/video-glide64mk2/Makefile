# $OpenBSD: Makefile,v 1.17 2018/12/13 19:53:23 sthen Exp $

COMMENT =		n64 emulator video plugin
REVISION =		6

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

COMPILER =		base-clang ports-gcc

WANTLIB =		GL SDL2 boost_filesystem boost_system c m png pthread z ${COMPILER_LIBCXX}
LIB_DEPENDS =		devel/boost devel/sdl2 graphics/png

MUPEN64PLUS_MOD = 	video-glide64mk2

.include <bsd.port.mk>
