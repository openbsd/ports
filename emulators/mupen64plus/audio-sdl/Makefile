# $OpenBSD: Makefile,v 1.2 2011/12/26 22:58:48 bentley Exp $

COMMENT =		n64 emulator sdl audio plugin

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		SDL samplerate
LIB_DEPENDS =		devel/sdl \
			audio/libsamplerate

MUPEN64PLUS_MOD = 	audio-sdl

# resolve 'no newline at end of file' warning
post-patch:
	echo >> ${WRKSRC}/src/osal_preproc.h

.include <bsd.port.mk>
