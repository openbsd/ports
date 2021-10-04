# $OpenBSD: Makefile,v 1.5 2021/10/04 13:28:27 espie Exp $

BROKEN-powerpc64 =	update297.gmic is not a valid G'MIC update file

COMMENT = 	image processing framework

V = 2.9.9
DISTNAME = 	gmic-$V

SHARED_LIBS +=  gmic 1.0 # 1

CATEGORIES = 	graphics
HOMEPAGE = 	https://gmic.eu/

# CeCILL
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} X11 c m z
WANTLIB += GraphicsMagick GraphicsMagick++ Iex-3_1
WANTLIB += IlmThread-3_1 Imath-3_1 curl fftw3 fftw3_threads
WANTLIB += jpeg png tiff OpenEXR-3_1 OpenEXRCore-3_1 OpenEXRUtil-3_1

WANTLIB += opencv_calib3d opencv_core opencv_dnn opencv_features2d
WANTLIB += opencv_flann opencv_highgui opencv_imgcodecs opencv_imgproc
WANTLIB += opencv_ml opencv_objdetect opencv_photo opencv_stitching
WANTLIB += opencv_video opencv_videoio


MASTER_SITES = 	https://gmic.eu/files/source/
DISTFILES = 	gmic_$V${EXTRACT_SUFX}

COMPILER =	base-clang ports-gcc 
MODULES = 	devel/cmake

LIB_DEPENDS = 	graphics/GraphicsMagick \
		graphics/openexr \
		net/curl \
		graphics/jpeg \
		graphics/opencv \
		graphics/png \
		math/fftw3

CONFIGURE_STYLE = cmake

# just so that the build doesn't create crazy logs
# tput wants a terminal name to do something, and gmic
# initial run creates loads of temporary files
MAKE_ENV = 	TERM=xterm TMP=${WRKDIR}/tmp
LDFLAGS = 	-L${LOCALBASE}/lib

# XXX does not do what it says it does
CONFIGURE_ARGS += -DCUSTOM_CFLAGS=Yes

CONFIGURE_ARGS += -DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS}"
CONFIGURE_ARGS += -DCMAKE_MODULE_LINKER_FLAGS="${LDFLAGS}"
CONFIGURE_ARGS += -DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS}"
CONFIGURE_ARGS += -DENABLE_OPENCV=ON

DEBUG_PACKAGES = ${BUILD_PACKAGES}

pre-build:
	mkdir -p ${WRKDIR}/tmp

do-build:
	@${MODCMAKE_BUILD_TARGET}
	@cd ${WRKSRC}/src && ${WRKBUILD}/gmic  gmic_stdlib.gmic it gmic_stdlib.gmic parse_gui update "(0)" a y serialize uchar,1,0 o -.h | sed 's/unsigned char/const unsigned char/' | sed 's/unnamed/gmic_stdlib/' > gmic_stdlib.h
	@echo "\nconst unsigned long size_data_gmic_stdlib = (unsigned long)sizeof(data_gmic_stdlib);" >> ${WRKSRC}/src/gmic_stdlib.h
	# rebuild with the boostrapped include
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>

