COMMENT =	JPEG XL image format reference implementation

GH_ACCOUNT =	libjxl
GH_PROJECT =	libjxl
GH_TAGNAME =	v0.10.3
GH_TESTDATA_COMMIT=ff8d743aaba05b3014f17e5475e576242fa979fc
CATEGORIES =	graphics

# add external test data
DISTFILES.t = 	libjxl-testdata-${GH_TAGNAME}{${GH_TESTDATA_COMMIT}}${EXTRACT_SUFX}
SITES.t =	https://github.com/libjxl/testdata/archive/

SHARED_LIBS +=	jxl			1.0 # 0.0
SHARED_LIBS +=	jxl_threads		1.0 # 0.0
SHARED_LIBS +=	jxl_cms			0.0 # 0.0
SHARED_LIBS +=	jxl_extras_codec	1.0 # 0.0


HOMEPAGE =	https://jpegxl.info/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

# C++
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake
DEBUG_PACKAGES=	${BUILD_PACKAGES}

RUN_DEPENDS =	misc/shared-mime-info
BUILD_DEPENDS +=	textproc/asciidoc \
		devel/gtest \
		devel/xdg-utils
LIB_DEPENDS +=	graphics/gdk-pixbuf2 \
		graphics/lcms2>=2.13 \
		graphics/png \
		graphics/giflib \
		devel/highway>=1.0.7 \
		archivers/brotli

WANTLIB += ${COMPILER_LIBCXX} brotlicommon brotlidec brotlienc
WANTLIB += c gdk_pixbuf-2.0 gif glib-2.0 gobject-2.0 hwy intl
WANTLIB += jpeg lcms2 m png z

# makes sure gmock library is found
CONFIGURE_ENV = LDFLAGS="-L${LOCALBASE}/lib"
# some taken from debian packaging
CONFIGURE_ARGS += \
	-DJPEGXL_BUNDLE_SKCMS:BOOL=OFF \
	-DJPEGXL_ENABLE_DOXYGEN:BOOL=OFF \
	-DJPEGXL_ENABLE_OPENEXR:BOOL=OFF \
	-DJPEGXL_ENABLE_SJPEG:BOOL=OFF \
	-DJPEGXL_ENABLE_SKCMS:BOOL=OFF \
	-DJPEGXL_FORCE_SYSTEM_BROTLI:BOOL=ON \
	-DJPEGXL_FORCE_SYSTEM_GTEST:BOOL=ON \
	-DJPEGXL_FORCE_SYSTEM_HWY:BOOL=ON \
	-DJPEGXL_FORCE_SYSTEM_LCMS2:BOOL=ON \
	-DJPEGXL_ENABLE_BENCHMARK:BOOL=OFF \
	-DJPEGXL_ENABLE_JPEGLI=OFF \
	-DJPEGXL_ENABLE_PLUGINS=ON \
	-DJPEGXL_ENABLE_PLUGIN_GDKPIXBUF=ON \
	-DJPEGXL_ENABLE_PLUGIN_GIMP210=OFF \
	-DJPEGXL_ENABLE_PLUGIN_MIME=ON \
	-DJPEGXL_TEST_DATA_PATH:STRING=${WRKDIR}/testdata-${GH_TESTDATA_COMMIT} \
	-DGMOCK_INCLUDE_DIR:STRING=${LOCALBASE}/include
#https://github.com/libjxl/libjxl/issues/3069

.include <bsd.port.mk>
