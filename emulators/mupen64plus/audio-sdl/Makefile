# $OpenBSD: Makefile,v 1.4 2013/03/11 11:06:04 espie Exp $

COMMENT =		n64 emulator sdl audio plugin

REVISION =		0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL pthread samplerate
LIB_DEPENDS =		devel/sdl \
			audio/libsamplerate

MUPEN64PLUS_MOD = 	audio-sdl

.include <bsd.port.mk>
