# $OpenBSD: Makefile,v 1.10 2016/01/11 09:35:45 ajacoutot Exp $

COMMENT =		n64 emulator sdl audio plugin
REVISION =		2

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL2 pthread samplerate speexdsp
LIB_DEPENDS =		audio/speex \
			devel/sdl2 \
			audio/libsamplerate

MUPEN64PLUS_MOD = 	audio-sdl

.include <bsd.port.mk>
