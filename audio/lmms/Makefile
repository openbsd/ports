COMMENT =		music studio with tracking, sampling and MIDI

V =			1.2.2
DISTNAME =		lmms_$V
PKGNAME =		lmms-$V
WRKDIST =		${WRKDIR}/lmms
EXTRACT_SUFX =		.tar.xz

CATEGORIES =		audio

HOMEPAGE =		https://lmms.io/

MASTER_SITES =		https://github.com/LMMS/lmms/releases/download/v$V/

MAINTAINER =		Dimitri Karamazov <deserter666@danwin1210.me>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets Qt5Xml
WANTLIB += c curses fftw3f fluidsynth jack m mp3lame ogg portaudio
WANTLIB += readline samplerate sndfile sndio vorbis vorbisenc
WANTLIB += vorbisfile

COMPILER =		base-clang ports-gcc

MODULES =		x11/qt5 devel/cmake
DEBUG_PACKAGES =	${BUILD_PACKAGES}

BUILD_DEPENDS =		shells/bash

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic
LIB_DEPENDS =		audio/fluidsynth \
			audio/jack \
			audio/lame \
			audio/libsamplerate \
			audio/libvorbis \
			audio/portaudio-svn \
			math/fftw3,float

CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${X11BASE}/include -I${LOCALBASE}/include" \
			CXXFLAGS="${CXXFLAGS} -I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${X11BASE}/lib -L${LOCALBASE}/lib"

CONFIGURE_ARGS =	-DCMAKE_PREFIX_PATH=${LOCALBASE}/lib/qt5/cmake \
			-DLMMS_HAVE_OSS=FALSE \
			-DWANT_QT5=ON \
			-DWANT_SDL=OFF \
			-DWANT_PULSEAUDIO=OFF

CONFIGURE_ARGS +=	-DWANT_CALF=OFF \
			-DWANT_CAPS=OFF \
			-DWANT_CARLA=OFF \
			-DWANT_CMT=OFF \
			-DWANT_GIG=OFF \
			-DWANT_STK=OFF \
			-DWANT_SWH=OFF \
			-DWANT_TAP=OFF \
			-DWANT_VST=OFF

NO_TEST =		Yes

.include <bsd.port.mk>
