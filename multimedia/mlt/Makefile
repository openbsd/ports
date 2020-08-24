# $OpenBSD: Makefile,v 1.27 2020/08/24 14:09:54 rsadowski Exp $

COMMENT-main =		multimedia transformations framework
COMMENT-gpl2 =		GPLv2-licensed modules for mlt
VERSION =		6.22.1
DISTNAME =		mlt-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-gpl2 =		mlt-gpl2-${VERSION}

# XXX versions should be kept in sync together
SHARED_LIBS =		mlt		3.2
SHARED_LIBS +=		mlt++		3.2

CATEGORIES =		multimedia devel
HOMEPAGE =		https://www.mltframework.org/
DEBUG_PACKAGES =	${BUILD_PACKAGES}

# GPLv2+, LGPLv2.1+
# Actually, qimage module could be under GPLv3+ if one more object
# file gets included, see --enable-gpl3 configure option.
PERMIT_PACKAGE =	Yes

WANTLIB-main += ${COMPILER_LIBCXX} SDL SDL2 SDL_image X11 avcodec avdevice
WANTLIB-main += avfilter avformat avutil c exif fftw3 fontconfig gdk-x11-2.0
WANTLIB-main += gdk_pixbuf-2.0 glib-2.0 gobject-2.0 jack m pango-1.0
WANTLIB-main += pangoft2-1.0 sox swresample swscale vorbisfile xml2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Svg Qt5Widgets
WANTLIB += Qt5Xml SDL2 exif m mlt samplerate

MASTER_SITES =		https://github.com/mltframework/mlt/releases/download/v${VERSION}/

MULTI_PACKAGES =	-main -gpl2

MODULES =		x11/qt5

BUILD_DEPENDS =		audio/ladspa \
			multimedia/frei0r-plugins \
			textproc/libxml

RUN_DEPENDS-main =	audio/ladspa \
			multimedia/frei0r-plugins \
			x11/gtk+3,-guic

LIB_DEPENDS-main =	audio/jack \
			audio/sox \
			devel/sdl-image \
			devel/sdl2 \
			graphics/ffmpeg \
			graphics/libexif \
			math/fftw3 \
			x11/gtk+2,-main

LIB_DEPENDS-gpl2 =	${BUILD_PKGPATH},-main \
			${MODQT5_LIB_DEPENDS} \
			audio/libsamplerate \
			devel/sdl2 \
			graphics/libexif \
			x11/qt5/qtsvg

MAKE_FLAGS =		soversion=${LIBmlt_VERSION}
MAKE_ENV =		LDFLAGS="${LDFLAGS} -L${X11BASE}/lib" \
			SHFLAGS="-shared" CXX=${CXX}

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--mandir=${PREFIX}/man \
			--disable-dv \
			--disable-kino \
			--disable-swfdec \
			--disable-rubberband \
			--enable-gpl \
			--enable-gpl3

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/melt.1 ${PREFIX}/man/man1/

# one test fails due to lack of support of locale-specific numeric formatting
TEST_DEPENDS =		${BUILD_PKGPATH},-main
TEST_FLAGS =		-e
# LFLAGS is not a typo
TEST_ENV =		COPTS="${CXXFLAGS}" LFLAGS="${LDFLAGS} -pthread"
do-test:
	cd ${WRKSRC}/src/tests; ${SETENV} ${ALL_TEST_ENV} ${MODQT_QMAKE} tests.pro
	cd ${WRKSRC}/src/tests; ${SETENV} ${ALL_TEST_ENV} ${MAKE_PROGRAM} \
		${ALL_TEST_FLAGS} clean all check

.include <bsd.port.mk>
