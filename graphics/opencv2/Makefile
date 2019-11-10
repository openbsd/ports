# $OpenBSD: Makefile,v 1.4 2019/11/10 15:32:55 ajacoutot Exp $

CATEGORIES =		graphics devel
COMMENT=		library for computer vision real-time processin

V =			2.4.13.4
GH_ACCOUNT =		Itseez
GH_PROJECT =		opencv
GH_TAGNAME =		${V}

PKGNAME =		opencv2-${V}
REVISION =		2

.for i in opencv_calib3d opencv_contrib opencv_core opencv_features2d \
  opencv_flann opencv_gpu opencv_highgui opencv_imgproc opencv_legacy \
  opencv_ml opencv_nonfree opencv_objdetect opencv_photo opencv_stitching \
  opencv_superres opencv_ts opencv_video opencv_videostab opencv_ocl
SHARED_LIBS += $i 3.0
.endfor

HOMEPAGE =		https://www.opencv.org/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# BSD license, but contains some patented algorithms, see
# http://docs.opencv.org/modules/nonfree/doc/nonfree.html
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX} Half-2_4 Iex-2_4 IlmImf-2_4 IlmThread-2_4
WANTLIB += Imath-2_4 X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 avcodec avformat
WANTLIB += avresample avutil c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gstriff-1.0 gstvideo-1.0 gthread-2.0 gtk-x11-2.0 intl
WANTLIB += jasper jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += png swscale tiff z

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		math/eigen3

LIB_DEPENDS =		graphics/ffmpeg \
			graphics/jpeg \
			graphics/openexr \
			graphics/png \
			graphics/tiff \
			multimedia/gstreamer1/plugins-base \
			x11/gtk+2

# ATM opencv requires V4L1 compat, ask them to change it,
# then see WITH_V4L below.
CONFIGURE_ARGS =	-DBUILD_DOCS=Off \
			-DBUILD_EXAMPLES=Off \
			-DBUILD_opencv_java=Off \
			-DBUILD_opencv_nonfree=On \
			-DBUILD_opencv_python=Off \
			-DINSTALL_PYTHON_EXAMPLES=Off \
			-DINSTALL_TESTS=Off \
			-DBUILD_TESTS=Off \
			-DBUILD_PERF_TESTS=Off \
			-DINSTALL_TO_MANGLED_PATHS=On \
			-DWITH_1394=Off \
			-DWITH_CUDA=Off \
			-DWITH_EIGEN=Off \
			-DWITH_FFMPEG=On \
			-DWITH_GSTREAMER=On \
			-DWITH_GTK=On \
			-DWITH_JPEG=On \
			-DWITH_PNG=On \
			-DWITH_TIFF=On \
			-DWITH_V4L=Off

.include <bsd.port.arch.mk>

.if ${ARCH:Mi386}
# XXX PIE cannot be produced due to problems with inline assembly.
# Since OpenCV is mostly used as a library, switch to PIC.
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -fPIC" \
			CXXFLAGS="${CXXFLAGS} -fPIC"

CONFIGURE_ARGS +=	-DENABLE_SSE3=Off
.endif

CONFIG_ADJ_CMD =	perl -pi
.for _l _v in ${SHARED_LIBS}
CONFIG_ADJ_CMD +=	-e 's,lib${_l}.so([^.]),lib${_l}.so.${_v}$$1,g;'
.endfor

# XXX: Tests are built along with OpenCV itself, not just when
# running the test suite.  If you want to test, enable at least
# BUILD_TESTS, ensure the package is uninstalled and rebuild.
CONFIGURE_ARGS +=	-DBUILD_TESTS=Off \
			-DINSTALL_TESTS=Off \
			-DBUILD_PERF_TESTS=Off
NO_TEST =		Yes

post-patch:
	perl -pi -e 's@^.*(#\s*include)@$$1@' \
		${WRKSRC}/samples/cpp/tutorial_code/core/how_to_scan_images/how_to_scan_images.cpp

post-install:
	${CONFIG_ADJ_CMD} ${PREFIX}/share/OpenCV-${V}/OpenCVConfig.cmake

.include <bsd.port.mk>
