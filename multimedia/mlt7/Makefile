COMMENT-main =	multimedia transformations framework
COMMENT-gpl2 =	GPLv2-licensed modules for mlt
V =		7.34.1
DISTNAME =	mlt-${V}
PKGNAME-main =	mlt7-${V}
PKGNAME-gpl2 =	mlt7-gpl2-${V}

CATEGORIES =	multimedia devel

HOMEPAGE =	https://www.mltframework.org/

SITES =		https://github.com/mltframework/mlt/releases/download/v${V}/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# XXX versions should be kept in sync together
SHARED_LIBS =		mlt-7		6.0
SHARED_LIBS +=		mlt++-7		6.0

# GPLv2+, LGPLv2.1+
# Actually, qimage module could be under GPLv3+ if one more object
# file gets included, see --enable-gpl3 configure option.
PERMIT_PACKAGE =	Yes

WANTLIB-main += ${COMPILER_LIBCXX} GL SDL2 X11 avcodec avdevice avfilter
WANTLIB-main += avformat avutil c ebur128 epoxy exif fftw3 fontconfig
WANTLIB-main += freetype gdk_pixbuf-2.0 glib-2.0 gobject-2.0 harfbuzz
WANTLIB-main += intl m movit pango-1.0 pangoft2-1.0 sox_ng swresample
WANTLIB-main += swscale vorbis vorbisfile xml2

WANTLIB-gpl2 += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets Qt5Xml
WANTLIB-gpl2 += Qt6Core Qt6Core5Compat Qt6Gui Qt6Svg Qt6SvgWidgets
WANTLIB-gpl2 += Qt6Widgets Qt6Xml exif fftw3 m mlt++-7 mlt-7 pulse
WANTLIB-gpl2 += pulse-simple samplerate vidstab

MULTI_PACKAGES =	-main -gpl2

MODULES =		devel/cmake \
			x11/qt5 \
			x11/qt6

BUILD_DEPENDS =		audio/ladspa \
			multimedia/frei0r-plugins \
			textproc/libxml

RUN_DEPENDS-main =	audio/ladspa \
			multimedia/frei0r-plugins \
			x11/gtk+4,-guic

LIB_DEPENDS-main =	audio/libebur128 \
			audio/sox \
			devel/pango \
			graphics/ffmpeg \
			multimedia/movit \
			graphics/gdk-pixbuf2 \
			graphics/libexif \
			math/fftw3

LIB_DEPENDS-gpl2 =	${BUILD_PKGPATH},-main \
			${MODQT5_LIB_DEPENDS} \
			${MODQT6_LIB_DEPENDS} \
			audio/libsamplerate \
			audio/pulseaudio \
			graphics/libexif \
			math/fftw3 \
			multimedia/libvidstab \
			x11/qt5/qtsvg \
			x11/qt6/qt5compat \
			x11/qt6/qtsvg

CONFIGURE_ARGS =	-DMOD_RUBBERBAND=OFF \
			-DMOD_JACKRACK=OFF

CONFIGURE_ARGS +=	-DMOD_QT=ON
CONFIGURE_ARGS +=	-DMOD_QT6=ON

# melt-7 is enough
post-install:
	rm ${WRKINST}/usr/local/bin/melt

.include <bsd.port.mk>
