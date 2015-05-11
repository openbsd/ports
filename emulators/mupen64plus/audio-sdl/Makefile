# $OpenBSD: Makefile,v 1.7 2015/05/11 09:40:40 bentley Exp $

COMMENT =		n64 emulator sdl audio plugin

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL pthread samplerate speexdsp
LIB_DEPENDS =		audio/speex \
			devel/sdl \
			audio/libsamplerate

MUPEN64PLUS_MOD = 	audio-sdl

.include <bsd.port.mk>
