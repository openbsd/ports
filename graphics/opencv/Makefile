# $OpenBSD: Makefile,v 1.42 2017/07/26 22:45:24 sthen Exp $

ONLY_FOR_ARCHS =	${GCC4_ARCHS} ${CLANG_ARCHS}

CATEGORIES =		graphics devel
COMMENT-docs =		OpenCV documentation and examples
COMMENT-main =		library of programming functions for real time cv
COMMENT-java =		Java bindings for OpenCV

V =			2.4.13
GH_ACCOUNT =		Itseez
GH_PROJECT =		opencv
GH_TAGNAME = 		${V}

PKGNAME-main =		${PKGNAME}
PKGNAME-docs =		opencv-docs-$V
PKGNAME-java =		opencv-java-$V
REVISION-docs =		0
REVISION-java =		0
REVISION-main =		0

.for i in opencv_calib3d opencv_contrib opencv_core opencv_features2d \
  opencv_flann opencv_gpu opencv_highgui opencv_imgproc opencv_legacy \
  opencv_ml opencv_nonfree opencv_objdetect opencv_photo opencv_stitching \
  opencv_superres opencv_ts opencv_video opencv_videostab opencv_ocl
SHARED_LIBS += $i 2.0
.endfor

HOMEPAGE =		http://www.opencv.org/
MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

# "patents" means containing some patented algorithms, see
# http://docs.opencv.org/modules/nonfree/doc/nonfree.html
# As some source modules include this functionality, we couldn't
# just subpackage "nonfree". Excluding this, here we have a usual
# BSD license.
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		patents
PERMIT_PACKAGE_CDROM-docs =	Yes

WANTLIB-main += ${MODPY_WANTLIB}
WANTLIB-main += Half Iex IlmImf IlmThread Imath X11 Xcomposite Xcursor
WANTLIB-main += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB-main += avcodec avformat avresample avutil bz2 c cairo fontconfig
WANTLIB-main += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB-main += gobject-2.0 gstapp-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB-main += gstriff-1.0 gstvideo-1.0 gthread-2.0 gtk-x11-2.0 intl
WANTLIB-main += jasper jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-main += png pthread ${COMPILER_LIBCXX} swscale tiff z

WANTLIB-docs =

WANTLIB-java =  m pthread ${COMPILER_LIBCXX}
WANTLIB-java += opencv_calib3d opencv_contrib opencv_core opencv_features2d
WANTLIB-java += opencv_flann opencv_gpu opencv_highgui opencv_imgproc
WANTLIB-java += opencv_legacy opencv_ml opencv_nonfree opencv_objdetect
WANTLIB-java += opencv_ocl opencv_photo opencv_video

MULTI_PACKAGES =	-main -docs -java
PSEUDO_FLAVORS =	no_docs no_java
FLAVOR ?=

.include <bsd.port.arch.mk>

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/doxygen \
			math/py-numpy \
			math/eigen3

RUN_DEPENDS-main =	math/py-numpy
RUN_DEPENDS-docs =	${BUILD_PKGPATH},-main
RUN_DEPENDS-java =	${MODJAVA_RUN_DEPENDS}

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			${MODPY_LIB_DEPENDS} \
			multimedia/gstreamer1/plugins-base \
			x11/gtk+2 \
			graphics/ffmpeg \
			graphics/ilmbase \
			graphics/jpeg \
			graphics/openexr \
			graphics/png \
			graphics/tiff
LIB_DEPENDS-docs =
LIB_DEPENDS-java =	${BUILD_PKGPATH},-main=${V}

# ATM opencv requires V4L1 compat, ask them to change it,
# then see WITH_V4L below.
CONFIGURE_ARGS =	-DBUILD_opencv_nonfree:Bool=On \
			-DBUILD_opencv_python:Bool=On \
			-DWITH_1394:Bool=Off \
			-DWITH_CUDA:Bool=Off \
			-DWITH_EIGEN:Bool=Off \
			-DWITH_FFMPEG:Bool=On \
			-DWITH_GSTREAMER:Bool=On \
			-DWITH_GTK:Bool=On \
			-DWITH_JPEG:Bool=On \
			-DWITH_PNG:Bool=On \
			-DWITH_TIFF:Bool=On \
			-DWITH_V4L:Bool=Off \
			-DPYTHON_EXECUTABLE:FILEPATH=${MODPY_BIN}

.if ${ARCH:Mi386}
# XXX PIE cannot be produced due to problems with inline assembly.
# Since OpenCV is mostly used as a library, switch to PIC.
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -fPIC" \
			CXXFLAGS="${CXXFLAGS} -fPIC"
CONFIGURE_ARGS +=	-DENABLE_SSE3:Bool=Off
.endif

.if ${BUILD_PACKAGES:M-java}
MODULES +=		java
MODJAVA_VER =		1.8+
BUILD_DEPENDS +=	devel/apache-ant
.else
# Safe: Java will be detected, if present, but won't be used
CONFIGURE_ARGS +=	-DBUILD_opencv_java:Bool=Off
.endif

.if ${BUILD_PACKAGES:M-docs}
BUILD_DEPENDS +=	textproc/py-sphinx
ALL_TARGET =		all html_docs
CONFIGURE_ARGS +=	-DBUILD_DOCS:Bool=On \
			-DBUILD_EXAMPLES:Bool=On \
			-DINSTALL_C_EXAMPLES:Bool=On \
			-DINSTALL_PYTHON_EXAMPLES:Bool=On
.else
CONFIGURE_ARGS +=	-DBUILD_DOCS:Bool=Off \
			-DBUILD_EXAMPLES:Bool=Off \
			-DINSTALL_PYTHON_EXAMPLES:Bool=Off
.endif

CONFIG_ADJ_CMD =	perl -pi
.for _l _v in ${SHARED_LIBS}
CONFIG_ADJ_CMD +=	-e 's,lib${_l}.so([^.]),lib${_l}.so.${_v}$$1,g;'
.endfor

DOCDIR =		${PREFIX}/share/doc/OpenCV

post-patch:
	perl -pi -e 's@^.*(#\s*include)@$$1@' \
		${WRKSRC}/samples/cpp/tutorial_code/core/how_to_scan_images/how_to_scan_images.cpp

post-install:
	${CONFIG_ADJ_CMD} ${PREFIX}/share/OpenCV/OpenCVConfig.cmake
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}
.if ${BUILD_PACKAGES:M-docs}
	rm -Rf ${DOCDIR}
	mv ${PREFIX}/share/OpenCV/doc ${DOCDIR}
	cp -R ${WRKBUILD}/doc/_html ${DOCDIR}/html
.endif

do-test:
	cd ${WRKBUILD}; \
	${MODPY_BIN} ${WRKSRC}/modules/ts/misc/run.py

.include <bsd.port.mk>
