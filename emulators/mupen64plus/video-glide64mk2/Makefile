# $OpenBSD: Makefile,v 1.14 2017/07/26 22:45:20 sthen Exp $

COMMENT =		n64 emulator video plugin
REVISION =		4

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

COMPILER =		gcc

WANTLIB =		GL SDL2 boost_filesystem boost_system c m png pthread z ${COMPILER_LIBCXX}
LIB_DEPENDS =		devel/boost devel/sdl2 graphics/png

MUPEN64PLUS_MOD = 	video-glide64mk2

.include <bsd.port.mk>
