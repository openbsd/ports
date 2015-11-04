# $OpenBSD: Makefile,v 1.8 2015/11/04 16:41:46 bentley Exp $

COMMENT =		n64 emulator video plugin
REVISION =		2

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		i386 amd64

WANTLIB =		GL SDL2 boost_filesystem boost_system c m png pthread z
LIB_DEPENDS =		devel/boost devel/sdl2 graphics/png

MUPEN64PLUS_MOD = 	video-glide64mk2

.include <bsd.port.mk>
