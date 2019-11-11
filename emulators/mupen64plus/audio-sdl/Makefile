# $OpenBSD: Makefile,v 1.15 2019/11/11 02:01:07 bentley Exp $

COMMENT =		n64 emulator sdl audio plugin

REVISION =		0

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		SDL2 samplerate speexdsp
LIB_DEPENDS =		audio/speexdsp \
			devel/sdl2 \
			audio/libsamplerate

MUPEN64PLUS_MOD = 	audio-sdl

.include <bsd.port.mk>
