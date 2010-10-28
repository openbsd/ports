# $OpenBSD: Makefile,v 1.1.1.1 2010/10/28 22:33:41 jakemsr Exp $

SHARED_ONLY =		Yes

COMMENT =		music studio with tracking, sampling and MIDI
DISTNAME =		lmms-0.4.8

CATEGORIES =		audio
HOMEPAGE =		http://lmms.sourceforge.net/

MAINTAINER =		Jacob Meuser <jakemsr@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		ICE SM QtGui QtXml X11 Xext Xft Xinerama c fltk jack \
			fftw3f fluidsynth fontconfig freetype m ncurses ogg \
			pthread readline samplerate sndfile sndio vorbis \
			vorbisenc vorbisfile z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=lmms/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4 devel/cmake gcc4
MODGCC4_ARCHES =	*
MODGCC4_LANGS =		c c++

RUN_DEPENDS =		:desktop-file-utils-*:devel/desktop-file-utils \
			:shared-mime-info-*:misc/shared-mime-info
LIB_DEPENDS =		::x11/qt4 \
			::audio/jack \
			::math/fftw3,float \
			::audio/fluidsynth \
			::audio/libsamplerate \
			::audio/libvorbis \
			::x11/fltk

USE_X11 =		Yes

CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${X11BASE}/include" \
			CXXFLAGS="${CXXFLAGS} -I${X11BASE}/include" \
			LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
CONFIGURE_ARGS =	-DWANT_OSS=OFF -DWANT_SDL=OFF

# these are all available as separate ports
CONFIGURE_ARGS +=	-DWANT_CALF=OFF -DWANT_CAPS=OFF -DWANT_CMT=OFF \
			-DWANT_SWH=OFF -DWANT_TAP=OFF

MAKE_FLAGS +=		VERBOSE=1

NO_REGRESS =		Yes

post-patch:
	cp ${FILESDIR}/FindSndio.cmake ${WRKSRC}/cmake/modules/
	cp ${FILESDIR}/{Audio,Midi}Sndio.h ${WRKSRC}/include/
	cp ${FILESDIR}/AudioSndio.cpp ${WRKSRC}/src/core/audio/
	cp ${FILESDIR}/MidiSndio.cpp ${WRKSRC}/src/core/midi/

.include <bsd.port.mk>
