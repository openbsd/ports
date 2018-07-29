# $OpenBSD: Makefile,v 1.17 2018/07/29 15:05:35 rsadowski Exp $

COMMENT-main =		multimedia transformations framework
COMMENT-gpl2 =		GPLv2-licensed modules for mlt
VERSION =		6.10.0
DISTNAME =		mlt-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-gpl2 =		mlt-gpl2-${VERSION}

# XXX versions should be kept in sync together
SHARED_LIBS =		mlt		2.0
SHARED_LIBS +=		mlt++		2.0

CATEGORIES =		multimedia devel
HOMEPAGE =		https://www.mltframework.org/

MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>

# GPLv2+, LGPLv2.1+
# Actually, qimage module could be under GPLv3+ if one more object
# file gets included, see --enable-gpl3 configure option.
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main += ${COMPILER_LIBCXX} SDL SDL2 SDL_image X11 avcodec avdevice
WANTLIB-main += avfilter avformat avutil c exif fftw3 fontconfig gdk-x11-2.0
WANTLIB-main += gdk_pixbuf-2.0 glib-2.0 gobject-2.0 jack m pango-1.0
WANTLIB-main += pangoft2-1.0 sox swresample swscale xml2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Svg Qt5Widgets
WANTLIB += Qt5Xml SDL2 X11 exif m mlt mlt++ samplerate

MASTER_SITES =		https://github.com/mltframework/mlt/releases/download/v${VERSION}/

MULTI_PACKAGES =	-main -gpl2

MODULES =		x11/qt5

BUILD_DEPENDS =		audio/ladspa \
			textproc/libxml

RUN_DEPENDS-main =	audio/ladspa \
			x11/gtk+3,-guic

LIB_DEPENDS-main =	audio/jack \
			audio/sox \
			devel/sdl2 \
			devel/sdl-image \
			graphics/ffmpeg \
			graphics/libexif \
			math/fftw3 \
			x11/gtk+2,-main

LIB_DEPENDS-gpl2 =	${BUILD_PKGPATH},-main \
			${MODQT5_LIB_DEPENDS} \
			x11/qt5/qtsvg \
			devel/sdl2 \
			audio/libsamplerate \
			graphics/libexif

MAKE_FLAGS =		soversion=${LIBmlt_VERSION}
MAKE_ENV =		LDFLAGS="${LDFLAGS} -L${X11BASE}/lib" \
			SHFLAGS="-shared"  CXX=${CXX}

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--mandir=${PREFIX}/man \
			--disable-dv \
			--disable-frei0r \
			--disable-kino \
			--disable-swfdec \
			--enable-gpl

# one test fails due to lack of support of locale-specific numeric formatting
TEST_DEPENDS =		${BUILD_PKGPATH},-main
TEST_FLAGS =		-e
# LFLAGS is not a typo
TEST_ENV =		COPTS="${CXXFLAGS}" LFLAGS="${LDFLAGS} -pthread"
do-test:
	cd ${WRKSRC}/src/tests; ${SETENV} ${ALL_TEST_ENV} qmake4 tests.pro
	cd ${WRKSRC}/src/tests; ${SETENV} ${ALL_TEST_ENV} ${MAKE_PROGRAM} \
	    ${ALL_TEST_FLAGS} clean all check

.include <bsd.port.mk>
