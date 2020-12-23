# $OpenBSD: Makefile,v 1.64 2020/12/23 18:33:05 rsadowski Exp $

ONLY_FOR_ARCHS =	${GCC4_ARCHS} ${CLANG_ARCHS}
ONLY_FOR_ARCHS-java =	aarch64 amd64 i386

CATEGORIES =		graphics devel
COMMENT-main =		library for computer vision real-time processin
COMMENT-java =		Java bindings for OpenCV

V =			4.5.1
GH_ACCOUNT =		opencv
GH_PROJECT =		opencv
GH_TAGNAME =		${V}

PKGNAME-main =		opencv-${V}
PKGNAME-java =		opencv-java-${V}

HOMEPAGE =		https://www.opencv.org/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

DISTFILES =		opencv-{opencv/archive/}${V}${EXTRACT_SUFX}

.for i in opencv_calib3d opencv_core opencv_features2d \
  opencv_flann opencv_highgui opencv_imgproc opencv_ml opencv_objdetect \
  opencv_photo opencv_stitching opencv_video opencv_imgcodecs \
  opencv_videoio opencv_dnn
SHARED_LIBS += $i 9.0
.endfor

WANTLIB-main += ${COMPILER_LIBCXX} IlmImf-2_5 avcodec avformat avutil
WANTLIB-main += c cairo gdk-3 gdk_pixbuf-2.0 glib-2.0 gobject-2.0 gstapp-1.0
WANTLIB-main += gstpbutils-1.0 gstreamer-1.0 gstriff-1.0 gtk-3 jpeg
WANTLIB-main += m openjp2 png swscale tiff webp z

WANTLIB-java += ${COMPILER_LIBCXX} m opencv_calib3d opencv_core opencv_dnn
WANTLIB-java += opencv_features2d opencv_flann opencv_highgui opencv_imgcodecs
WANTLIB-java += opencv_imgproc opencv_ml opencv_objdetect opencv_photo
WANTLIB-java += opencv_video opencv_videoio

COMPILER =		base-clang ports-gcc

MULTI_PACKAGES =	-main -java
PSEUDO_FLAVORS =	no_java
FLAVOR ?=

# BSDL
PERMIT_PACKAGE =	Yes

.include <bsd.port.arch.mk>

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		lang/python/${MODPY_DEFAULT_VERSION_3} \
			math/eigen3 \
			math/py-numpy \
			math/py-numpy,python3

RUN_DEPENDS-main =	math/py-numpy \
			math/py-numpy,python3

RUN_DEPENDS-java =	${MODJAVA_RUN_DEPENDS}

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			graphics/ffmpeg \
			graphics/jpeg \
			graphics/libwebp \
			graphics/openexr \
			graphics/openjp2 \
			graphics/png \
			graphics/tiff \
			multimedia/gstreamer1/plugins-base \
			x11/gtk+3

LIB_DEPENDS-java =	${BUILD_PKGPATH},-main=${V}

# XXX PIE cannot be produced due to problems with inline assembly.
# Since OpenCV is mostly used as a LIBrary, switch to PIC.
.if ${ARCH:Mi386}
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -fPIC" \
			CXXFLAGS="${CXXFLAGS} -fPIC"
.endif

# Fix "undefined reference to `__atomic_store_8'" (and more)
.if ${MACHINE_ARCH:Mhppa}
WANTLIB +=		atomic
CONFIGURE_ENV +=	LDFLAGS="${LDFLAGS} -latomic"
.endif

# ATM opencv requires V4L1 compat, ask them to change it,
# then see WITH_V4L below.
CONFIGURE_ARGS =	-DBUILD_DOCS=OFF \
			-DBUILD_EXAMPLES=OFF \
			-DBUILD_IPP_IW=OFF \
			-DBUILD_ITT=OFF \
			-DBUILD_PERF_TESTS=OFF \
			-DBUILD_TESTS=OFF \
			-DINSTALL_PYTHON_EXAMPLES=OFF \
			-DINSTALL_TESTS=OFF \
			-DWITH_1394=OFF \
			-DWITH_ADE=OFF \
			-DWITH_CUDA=OFF \
			-DWITH_EIGEN=OFF \
			-DWITH_IPP=OFF \
			-DWITH_OPENCL=OFF \
			-DWITH_V4L=OFF \
			-DWITH_VTK=OFF

.if ${BUILD_PACKAGES:M-java}
MODULES +=		java
MODJAVA_VER =		1.8+
BUILD_DEPENDS +=	devel/apache-ant
.else
# Safe: Java will be detected, if present, but won't be used
CONFIGURE_ARGS +=	-DBUILD_opencv_java=OFF
.endif

CONFIG_ADJ_CMD =	perl -pi
.for _l _v in ${SHARED_LIBS}
CONFIG_ADJ_CMD +=	-e 's,lib${_l}.so([^.]),lib${_l}.so.${_v}$$1,g;'
.endfor

SUBST_VARS +=	MODPY_DEFAULT_VERSION_3

NO_TEST =	Yes
# Enable to run the regression tests
#TEST_IS_INTERACTIVE =	X11
#
#CONFIGURE_ARGS +=	-DDBUILD_TESTS=ON \
#			-DBUILD_PERF_TESTS=ON


post-patch:
	perl -pi -e 's@^.*(#\s*include)@$$1@' \
		${WRKSRC}/samples/cpp/tutorial_code/core/how_to_scan_images/how_to_scan_images.cpp

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}

do-test:
	cd ${WRKBUILD}; \
	${MODPY_BIN} ${WRKSRC}/modules/ts/misc/run.py

.include <bsd.port.mk>
