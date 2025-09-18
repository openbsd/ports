COMMENT =	software synthesizer emulating pre-GM MIDI devices

V =		2.7.2
PKGNAME =	munt-${V}

DIST_TUPLE +=	github munt munt libmt32emu_${V:S/./_/g} .

SHARED_LIBS +=  mt32emu		0.0 # 2.7.2

CATEGORIES =	audio

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# LGPLV2.1+ (mt32emu)
# GPLv3+ (mt32mu_qt, mt32emu_smf2wav)
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6Widgets c glib-2.0 jack m portaudio
# pulse-simple is dlopen'd
WANTLIB += pulse-simple

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic
LIB_DEPENDS =	audio/jack \
		audio/portaudio-svn \
		audio/pulseaudio \
		devel/glib2 \
		x11/qt6/qtmultimedia

CONFIGURE_ARGS = -Dlibmt32emu_SHARED=ON

.include <bsd.port.mk>
