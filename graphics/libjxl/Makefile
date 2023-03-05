COMMENT =	JPEG XL image format reference implementation

GH_ACCOUNT =	libjxl
GH_PROJECT =	libjxl
GH_TAGNAME =	v0.8.1
GH_TESTDATA_COMMIT=98b37ee31189f1a31bb384191de0ea4b0358e0a0
CATEGORIES =	graphics

REVISION =	1

# add external test data
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		libjxl-testdata-${GH_TAGNAME}{${GH_TESTDATA_COMMIT}}${EXTRACT_SUFX}:0
MASTER_SITES0 =	https://github.com/libjxl/testdata/archive/

SHARED_LIBS +=	jxl		0.0 # 0.0
SHARED_LIBS +=	jxl_threads	0.0 # 0.0

HOMEPAGE =	https://jpegxl.info/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake
DEBUG_PACKAGES=	${BUILD_PACKAGES}

BUILD_DEPENDS +=	textproc/asciidoc \
		devel/gtest
LIB_DEPENDS +=	graphics/lcms2>=2.13 \
		graphics/openexr \
		graphics/png \
		graphics/giflib \
		devel/highway \
		archivers/brotli

WANTLIB += ${COMPILER_LIBCXX} Iex-3_1 IlmThread-3_1 Imath-3_1
WANTLIB += OpenEXR-3_1 OpenEXRCore-3_1 OpenEXRUtil-3_1 brotlicommon
WANTLIB += brotlidec brotlienc c gif hwy jpeg lcms2 m png z

# makes sure gmock library is found
CONFIGURE_ENV = LDFLAGS="-L${LOCALBASE}/lib"
# some taken from debian packaging
CONFIGURE_ARGS += \
	-DJPEGXL_BUNDLE_SKCMS:BOOL=OFF \
	-DJPEGXL_ENABLE_DOXYGEN:BOOL=OFF \
	-DJPEGXL_ENABLE_OPENEXR:BOOL=ON \
	-DJPEGXL_ENABLE_SJPEG:BOOL=OFF \
	-DJPEGXL_ENABLE_SKCMS:BOOL=OFF \
	-DJPEGXL_FORCE_SYSTEM_BROTLI:BOOL=ON \
	-DJPEGXL_FORCE_SYSTEM_GTEST:BOOL=ON \
	-DJPEGXL_FORCE_SYSTEM_HWY:BOOL=ON \
	-DJPEGXL_FORCE_SYSTEM_LCMS2:BOOL=ON \
	-DJPEGXL_ENABLE_BENCHMARK:BOOL=OFF \
	-DJPEGXL_TEST_DATA_PATH:STRING=${WRKDIR}/testdata-${GH_TESTDATA_COMMIT} \
	-DGMOCK_INCLUDE_DIR:STRING=${LOCALBASE}/include

.include <bsd.port.mk>
