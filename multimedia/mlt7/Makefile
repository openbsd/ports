COMMENT-main =	multimedia transformations framework
COMMENT-gpl2 =	GPLv2-licensed modules for mlt
V =		7.18.0
DISTNAME =	mlt-${V}
PKGNAME-main =	mlt7-${V}
PKGNAME-gpl2 =	mlt7-gpl2-${V}


CATEGORIES =	multimedia devel

HOMEPAGE =	https://www.mltframework.org/

SITES =		https://github.com/mltframework/mlt/releases/download/v${V}/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# XXX versions should be kept in sync together
SHARED_LIBS =		mlt-7		4.2
SHARED_LIBS +=		mlt++-7		4.2

# GPLv2+, LGPLv2.1+
# Actually, qimage module could be under GPLv3+ if one more object
# file gets included, see --enable-gpl3 configure option.
PERMIT_PACKAGE =	Yes

WANTLIB-main += ${COMPILER_LIBCXX} SDL SDL2 X11 avcodec avdevice avfilter
WANTLIB-main += avformat avutil c ebur128 exif fftw3 fontconfig freetype
WANTLIB-main += gdk_pixbuf-2.0 glib-2.0 gobject-2.0 harfbuzz intl jack
WANTLIB-main += m pango-1.0 pangoft2-1.0 sox swresample swscale vorbis
WANTLIB-main += vorbisfile xml2

WANTLIB-gpl2 += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Svg Qt5Widgets
WANTLIB-gpl2 += Qt5Xml exif fftw3 m mlt++-7 mlt-7 pulse pulse-simple
WANTLIB-gpl2 += samplerate vidstab

MULTI_PACKAGES =	-main -gpl2

MODULES =		devel/cmake \
			x11/qt5

BUILD_DEPENDS =		audio/ladspa \
			multimedia/frei0r-plugins \
			textproc/libxml

RUN_DEPENDS-main =	audio/ladspa \
			multimedia/frei0r-plugins \
			x11/gtk+4,-guic

LIB_DEPENDS-main =	audio/jack \
			audio/libebur128 \
			audio/sox \
			devel/pango \
			devel/sdl \
			devel/sdl2 \
			graphics/ffmpeg \
			graphics/gdk-pixbuf2 \
			graphics/libexif \
			math/fftw3

LIB_DEPENDS-gpl2 =	${BUILD_PKGPATH},-main \
			${MODQT5_LIB_DEPENDS} \
			audio/libsamplerate \
			audio/pulseaudio \
			graphics/libexif \
			math/fftw3 \
			multimedia/libvidstab \
			x11/qt5/qtsvg

CONFIGURE_ARGS =	-DMOD_RUBBERBAND=OFF

# melt-7 is enough
post-install:
	rm ${WRKINST}/usr/local/bin/melt

.include <bsd.port.mk>
