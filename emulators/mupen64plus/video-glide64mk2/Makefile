# $OpenBSD: Makefile,v 1.3 2014/04/17 07:03:59 bentley Exp $

COMMENT =		n64 emulator video plugin

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
REVISION =		1

MODULES =		gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		i386 amd64

WANTLIB =		GL SDL boost_filesystem boost_system c m png pthread z
LIB_DEPENDS =		devel/boost devel/sdl graphics/png

MUPEN64PLUS_MOD = 	video-glide64mk2

.include <bsd.port.mk>
