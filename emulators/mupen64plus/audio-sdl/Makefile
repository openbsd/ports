# $OpenBSD: Makefile,v 1.5 2013/09/05 03:26:29 bentley Exp $

COMMENT =		n64 emulator sdl audio plugin

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL pthread samplerate speexdsp
LIB_DEPENDS =		audio/speex \
			devel/sdl \
			audio/libsamplerate

MUPEN64PLUS_MOD = 	audio-sdl

MAKE_FLAGS +=		NO_OSS=1

.include <bsd.port.mk>
