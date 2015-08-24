# $OpenBSD: Makefile,v 1.7 2015/08/24 04:10:56 bentley Exp $

COMMENT =		n64 emulator video plugin
REVISION =		1

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		i386 amd64

WANTLIB =		GL SDL boost_filesystem boost_system c m png pthread z
LIB_DEPENDS =		devel/boost devel/sdl graphics/png

MUPEN64PLUS_MOD = 	video-glide64mk2

.include <bsd.port.mk>
