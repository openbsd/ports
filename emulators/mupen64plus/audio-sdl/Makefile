# $OpenBSD: Makefile,v 1.12 2018/11/26 18:57:27 naddy Exp $

COMMENT =		n64 emulator sdl audio plugin
REVISION =		4

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL2 pthread samplerate speexdsp
LIB_DEPENDS =		audio/speexdsp \
			devel/sdl2 \
			audio/libsamplerate

MUPEN64PLUS_MOD = 	audio-sdl

.include <bsd.port.mk>
