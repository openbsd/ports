# $OpenBSD: Makefile,v 1.14 2019/07/12 20:46:09 sthen Exp $

COMMENT =		n64 emulator sdl audio plugin

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		SDL2 samplerate speexdsp
LIB_DEPENDS =		audio/speexdsp \
			devel/sdl2 \
			audio/libsamplerate

MUPEN64PLUS_MOD = 	audio-sdl

.include <bsd.port.mk>
