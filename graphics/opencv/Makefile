# $OpenBSD: Makefile,v 1.54 2019/11/10 15:32:55 ajacoutot Exp $

ONLY_FOR_ARCHS =	${GCC4_ARCHS} ${CLANG_ARCHS}
ONLY_FOR_ARCHS-java =	aarch64 amd64 i386

CATEGORIES =		graphics devel
COMMENT-main =		library for computer vision real-time processin
COMMENT-java =		Java bindings for OpenCV

V =		3.4.7
GH_ACCOUNT =	opencv
GH_PROJECT =	opencv
GH_TAGNAME =	${V}

PKGNAME-main =		opencv-${V}
PKGNAME-java =		opencv-java-${V}

REVISION-main =		1
REVISION-java =		0

HOMEPAGE =		https://www.opencv.org/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

DISTFILES =		opencv-{opencv/archive/}${V}${EXTRACT_SUFX}

.for i in opencv_calib3d opencv_core opencv_features2d \
  opencv_flann opencv_highgui opencv_imgproc \
  opencv_ml opencv_objdetect opencv_photo opencv_stitching \
  opencv_superres opencv_video opencv_videostab opencv_imgcodecs \
  opencv_shape opencv_videoio opencv_dnn
SHARED_LIBS += $i 5.0
.endfor

WANTLIB-main += ${COMPILER_LIBCXX} Half-2_4 Iex-2_4 IlmImf-2_4 IlmThread-2_4
WANTLIB-main += Imath-2_4 atk-1.0 avcodec avformat avresample avutil
WANTLIB-main += c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB-main += glib-2.0 gobject-2.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB-main += gstpbutils-1.0 gstreamer-1.0 gstriff-1.0 gstvideo-1.0
WANTLIB-main += gthread-2.0 gtk-3 intl jasper jpeg m pango-1.0 pangocairo-1.0
WANTLIB-main += png swscale tiff webp z

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

BUILD_DEPENDS =		math/py-numpy \
			math/eigen3

RUN_DEPENDS-main =	math/py-numpy
RUN_DEPENDS-java =	${MODJAVA_RUN_DEPENDS}

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			multimedia/gstreamer1/plugins-base \
			x11/gtk+3 \
			graphics/ffmpeg \
			graphics/jpeg \
			graphics/libwebp \
			graphics/openexr \
			graphics/png \
			graphics/tiff

LIB_DEPENDS-java =	${BUILD_PKGPATH},-main=${V}

# XXX PIE cannot be produced due to problems with inline assembly.
# Since OpenCV is mostly used as a LIBrary, switch to PIC.
.if ${ARCH:Mi386}
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -fPIC" \
			CXXFLAGS="${CXXFLAGS} -fPIC"
.endif

# Fix "undefined reference to `__atomic_store_8'" (and more)
.if ${MACHINE_ARCH:Mpowerpc} || ${MACHINE_ARCH:Mhppa}
WANTLIB +=		atomic
CONFIGURE_ENV +=	LDFLAGS="${LDFLAGS} -latomic"
.endif

# ATM opencv requires V4L1 compat, ask them to change it,
# then see WITH_V4L below.
CONFIGURE_ARGS =	-DBUILD_DOCS=Off \
			-DBUILD_EXAMPLES=Off \
			-DBUILD_IPP_IW=Off \
			-DBUILD_ITT=Off \
			-DBUILD_PERF_TESTS=Off \
			-DBUILD_TESTS=Off \
			-DENABLE_SSE3=Off \
			-DINSTALL_PYTHON_EXAMPLES=Off \
			-DINSTALL_TESTS=Off \
			-DWITH_1394=Off \
			-DWITH_CUDA=Off \
			-DWITH_EIGEN=Off \
			-DWITH_IPP=Off \
			-DWITH_OPENCL=Off \
			-DWITH_V4L=Off \
			-DWITH_VTK=Off

.if ${BUILD_PACKAGES:M-java}
MODULES +=		java
MODJAVA_VER =		1.8+
BUILD_DEPENDS +=	devel/apache-ant
.else
# Safe: Java will be detected, if present, but won't be used
CONFIGURE_ARGS +=	-DBUILD_opencv_java=Off
.endif

CONFIG_ADJ_CMD =	perl -pi
.for _l _v in ${SHARED_LIBS}
CONFIG_ADJ_CMD +=	-e 's,lib${_l}.so([^.]),lib${_l}.so.${_v}$$1,g;'
.endfor

NO_TEST =	Yes
# Enable to run the regression tests
#TEST_IS_INTERACTIVE =	X11
#
#CONFIGURE_ARGS +=	-DDBUILD_TESTS=On \
#			-DBUILD_PERF_TESTS=On


post-patch:
	perl -pi -e 's@^.*(#\s*include)@$$1@' \
		${WRKSRC}/samples/cpp/tutorial_code/core/how_to_scan_images/how_to_scan_images.cpp

post-install:
	${CONFIG_ADJ_CMD} ${PREFIX}/share/OpenCV/OpenCVConfig.cmake
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}

do-test:
	cd ${WRKBUILD}; \
	${MODPY_BIN} ${WRKSRC}/modules/ts/misc/run.py

.include <bsd.port.mk>
