# $OpenBSD: Makefile,v 1.9 2013/03/10 22:55:03 espie Exp $

SHARED_ONLY =		Yes

ONLY_FOR_ARCHS =	${GCC4_ARCHS}

COMMENT =		music studio with tracking, sampling and MIDI

DISTNAME =		lmms-0.4.8
REVISION =		3
CATEGORIES =		audio

HOMEPAGE =		http://lmms.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		ICE SM QtGui QtXml X11 Xext Xft Xinerama c fltk jack \
			fftw3f fluidsynth fontconfig freetype m ncurses ogg \
			pthread readline samplerate sndfile sndio vorbis \
			vorbisenc vorbisfile z stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=lmms/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4 devel/cmake

BUILD_DEPENDS =		audio/portaudio-svn
RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info
LIB_DEPENDS =		audio/jack \
			math/fftw3,float \
			audio/fluidsynth \
			audio/libsamplerate \
			audio/libvorbis \
			x11/fltk

USE_X11 =		Yes

CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${X11BASE}/include" \
			CXXFLAGS="${CXXFLAGS} -I${X11BASE}/include" \
			LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
CONFIGURE_ARGS =	-DWANT_OSS=OFF -DWANT_SDL=OFF -DWANT_PULSEAUDIO=OFF

# these are all available as separate ports
CONFIGURE_ARGS +=	-DWANT_CALF=OFF -DWANT_CAPS=OFF -DWANT_CMT=OFF \
			-DWANT_SWH=OFF -DWANT_TAP=OFF

MAKE_FLAGS +=		VERBOSE=1

NO_TEST =		Yes

post-patch:
	cp ${FILESDIR}/FindSndio.cmake ${WRKSRC}/cmake/modules/
	cp ${FILESDIR}/{Audio,Midi}Sndio.h ${WRKSRC}/include/
	cp ${FILESDIR}/AudioSndio.cpp ${WRKSRC}/src/core/audio/
	cp ${FILESDIR}/MidiSndio.cpp ${WRKSRC}/src/core/midi/

.include <bsd.port.mk>
