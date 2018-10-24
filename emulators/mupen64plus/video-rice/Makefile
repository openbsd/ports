# $OpenBSD: Makefile,v 1.16 2018/10/24 14:28:02 sthen Exp $

COMMENT =		n64 emulator opengl video plugin
REVISION =		5

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL SDL2 m png pthread z ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/sdl2 graphics/png
MUPEN64PLUS_MOD = 	video-rice

.include <bsd.port.mk>
