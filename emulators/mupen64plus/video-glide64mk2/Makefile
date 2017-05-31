# $OpenBSD: Makefile,v 1.12 2017/05/31 08:08:15 espie Exp $

COMMENT =		n64 emulator video plugin
REVISION =		3

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

COMPILER =		gcc

WANTLIB =		GL SDL2 boost_filesystem boost_system c m png pthread z ${LIBECXX}
LIB_DEPENDS =		devel/boost devel/sdl2 graphics/png

MUPEN64PLUS_MOD = 	video-glide64mk2

.include <bsd.port.mk>
