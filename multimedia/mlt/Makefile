# $OpenBSD: Makefile,v 1.4 2014/07/20 09:17:46 zhuk Exp $

SHARED_ONLY =		Yes
COMMENT-main =		multimedia transformations framework
COMMENT-gpl2 =		GPLv2-licensed modules for mlt
VERSION =		0.9.2
DISTNAME =		mlt-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-gpl2 =		mlt-gpl2-${VERSION}
REVISION-main =		0
REVISION-gpl2 =		0

# XXX versions should be kept in sync together
SHARED_LIBS =		mlt		0.0
SHARED_LIBS +=		mlt++		0.0

CATEGORIES =		multimedia devel
HOMEPAGE =		http://www.mltframework.org/

MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>

# GPLv2+, LGPLv2.1+
# Actually, qimage module could be under GPLv3+ if one more object
# file gets included, see --enable-gpl3 configure option.
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main =  ${MODGCC4_CPPWANTLIB} SDL SDL_image X11 avcodec
WANTLIB-main += avdevice avformat avutil c cairo exif gdk-x11-2.0
WANTLIB-main += gdk_pixbuf-2.0 glib-2.0 gobject-2.0 jack m pango-1.0
WANTLIB-main += pangoft2-1.0 pthread sox swfdec-0.8 swscale xml2

WANTLIB-gpl2 =  ${MODGCC4_CPPWANTLIB} ${MODQT4_WANTLIB} lib/qt4/QtGui
WANTLIB-gpl2 += lib/qt4/QtSvg lib/qt4/QtXml lib/qt4/QtOpenGL
WANTLIB-gpl2 += X11 exif m mlt mlt++ pthread samplerate

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=mlt/}
EXTRACT_SUFX =		.tar.gz

MULTI_PACKAGES =	-main -gpl2

MODULES =		x11/kde4
MODKDE4_USE =

BUILD_DEPENDS =		audio/ladspa \
			textproc/libxml>=2.5 \
			${MODKDE4_DEP_DIR}/libs>=${MODKDE4_DEP_VERSION}

RUN_DEPENDS-main =	audio/ladspa \
			x11/gtk+2,-guic

LIB_DEPENDS-main =	${MODGCC4_CPPLIBDEP} \
			audio/jack \
			audio/sox \
			devel/sdl>=1.2 \
			devel/sdl-image>=1.2 \
			graphics/ffmpeg \
			graphics/libexif \
			graphics/swfdec \
			x11/gtk+2,-main

LIB_DEPENDS-gpl2 =	${BUILD_PKGPATH},-main \
			${MODGCC4_CPPLIBDEP} \
			${MODQT4_LIB_DEPENDS} \
			audio/libsamplerate>=0.1.5 \
			graphics/libexif

MAKE_FLAGS =		soversion=${LIBmlt_VERSION}
MAKE_ENV =		LDFLAGS="${LDFLAGS} -L${X11BASE}/lib" SHFLAGS="-shared"

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--mandir=${PREFIX}/man \
			--disable-dv \
			--disable-frei0r \
			--disable-kino \
			--disable-vorbis \
			--enable-debug \
			--enable-gpl
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -std=gnu99"

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
