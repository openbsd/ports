# $OpenBSD: Makefile,v 1.8 2015/08/24 04:10:56 bentley Exp $

COMMENT =		n64 emulator sdl audio plugin
REVISION =		0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL pthread samplerate speexdsp
LIB_DEPENDS =		audio/speex \
			devel/sdl \
			audio/libsamplerate

MUPEN64PLUS_MOD = 	audio-sdl

.include <bsd.port.mk>
