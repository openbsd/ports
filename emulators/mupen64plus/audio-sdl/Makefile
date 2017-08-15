# $OpenBSD: Makefile,v 1.11 2017/08/15 01:07:45 naddy Exp $

COMMENT =		n64 emulator sdl audio plugin
REVISION =		3

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL2 pthread samplerate speexdsp
LIB_DEPENDS =		audio/speexdsp \
			devel/sdl2 \
			audio/libsamplerate

MUPEN64PLUS_MOD = 	audio-sdl

.include <bsd.port.mk>
