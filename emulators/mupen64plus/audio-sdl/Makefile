# $OpenBSD: Makefile,v 1.6 2014/04/17 07:03:59 bentley Exp $

COMMENT =		n64 emulator sdl audio plugin
REVISION =		0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL pthread samplerate speexdsp
LIB_DEPENDS =		audio/speex \
			devel/sdl \
			audio/libsamplerate

MUPEN64PLUS_MOD = 	audio-sdl

MAKE_FLAGS +=		NO_OSS=1

.include <bsd.port.mk>
