# $OpenBSD: Makefile,v 1.3 2012/12/24 09:23:07 bentley Exp $

COMMENT =		n64 emulator sdl audio plugin

REVISION =		0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		SDL pthread samplerate
LIB_DEPENDS =		devel/sdl \
			audio/libsamplerate

MUPEN64PLUS_MOD = 	audio-sdl

.include <bsd.port.mk>
