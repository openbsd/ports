# $OpenBSD: Makefile,v 1.17 2018/11/26 18:57:28 naddy Exp $

COMMENT =		n64 emulator opengl video plugin
REVISION =		6

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL SDL2 m png pthread z ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/sdl2 graphics/png
MUPEN64PLUS_MOD = 	video-rice

.include <bsd.port.mk>
