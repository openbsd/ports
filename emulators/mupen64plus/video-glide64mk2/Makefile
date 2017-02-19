# $OpenBSD: Makefile,v 1.10 2017/02/19 06:16:25 bentley Exp $

COMMENT =		n64 emulator video plugin
REVISION =		3

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		gcc4
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*

WANTLIB =		GL SDL2 boost_filesystem boost_system c m png pthread z
LIB_DEPENDS =		devel/boost devel/sdl2 graphics/png

MUPEN64PLUS_MOD = 	video-glide64mk2

.include <bsd.port.mk>
