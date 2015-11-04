# $OpenBSD: Makefile,v 1.9 2015/11/04 16:41:45 bentley Exp $

COMMENT =		n64 emulator sdl audio plugin
REVISION =		1

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL2 pthread samplerate speexdsp
LIB_DEPENDS =		audio/speex \
			devel/sdl2 \
			audio/libsamplerate

MUPEN64PLUS_MOD = 	audio-sdl

.include <bsd.port.mk>
