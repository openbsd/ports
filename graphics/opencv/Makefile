# $OpenBSD: Makefile,v 1.37 2016/04/15 08:53:49 shadchin Exp $

ONLY_FOR_ARCHS =	${GCC4_ARCHS}
ONLY_FOR_ARCHS-java =	amd64 i386

CATEGORIES =		graphics devel
COMMENT-docs =		OpenCV documentation and examples
COMMENT-main =		library of programming functions for real time cv
COMMENT-java =		Java bindings for OpenCV

V =			2.4.12.3
DISTNAME =		opencv-$V
PKGNAME-main =		${PKGNAME}
PKGNAME-docs =		opencv-docs-$V
PKGNAME-java =		opencv-java-$V
REVISION-docs =		0

HOMEPAGE =		http://www.opencv.org/
MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

SHARED_LIBS =		opencv_calib3d			1.1 #1.2
SHARED_LIBS +=		opencv_contrib			1.1 #1.2
SHARED_LIBS +=		opencv_core			1.1 #1.2
SHARED_LIBS +=		opencv_features2d		1.1 #1.2
SHARED_LIBS +=		opencv_flann			1.1 #1.2
SHARED_LIBS +=		opencv_gpu			1.1 #1.2
SHARED_LIBS +=		opencv_highgui			1.1 #1.2
SHARED_LIBS +=		opencv_imgproc			1.1 #1.2
SHARED_LIBS +=		opencv_legacy			1.1 #1.2
SHARED_LIBS +=		opencv_ml			1.1 #1.2
SHARED_LIBS +=		opencv_nonfree			0.1 #0.2
SHARED_LIBS +=		opencv_objdetect		1.1 #1.2
SHARED_LIBS +=		opencv_photo			0.1 #0.2
SHARED_LIBS +=		opencv_stitching		0.1 #0.2
SHARED_LIBS +=		opencv_superres			0.1 #0.2
SHARED_LIBS +=		opencv_ts			0.1 #0.2
SHARED_LIBS +=		opencv_video			1.1 #1.2
SHARED_LIBS +=		opencv_videostab		0.1 #0.2
SHARED_LIBS +=		opencv_ocl			0.1 #2.5

GH_ACCOUNT =		Itseez
GH_PROJECT =		opencv
GH_COMMIT =		8e40becab12c642e7bbafb9fe87698e8b6bf28da

WANTLIB-main =  Half Iex IlmImf IlmThread Imath X11 Xcomposite Xcursor
WANTLIB-main += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB-main += avcodec avformat avutil bz2 c cairo fontconfig
WANTLIB-main += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB-main += gobject-2.0 gstapp-1.0 gstbase-1.0 gstpbutils-1.0
WANTLIB-main += gstreamer-1.0 gstriff-1.0 gstvideo-1.0 gthread-2.0 gtk-x11-2.0
WANTLIB-main += jasper jpeg m pango-1.0 pangocairo-1.0 avresample
WANTLIB-main += pangoft2-1.0 png pthread stdc++ swscale tiff xml2 z
WANTLIB-main += ${MODGETTEXT_WANTLIB} ${MODPY_WANTLIB}

WANTLIB-docs =

WANTLIB-java =  m pthread stdc++
WANTLIB-java += opencv_calib3d opencv_contrib opencv_core
WANTLIB-java += opencv_features2d opencv_flann opencv_highgui
WANTLIB-java += opencv_imgproc opencv_ml opencv_objdetect
WANTLIB-java += opencv_photo opencv_video
WANTLIB-java += opencv_gpu opencv_legacy opencv_nonfree opencv_ocl

MULTI_PACKAGES =	-main -docs -java
PSEUDO_FLAVORS =	no_docs no_java
FLAVOR ?=

# "patents" means containing some patented algorithms, see
# http://docs.opencv.org/modules/nonfree/doc/nonfree.html
# As some source modules include this functionality, we couldn't
# just subpackage "nonfree". Excluding this, here we have a usual
# BSDL
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		patents
PERMIT_PACKAGE_CDROM-docs =	Yes

.include <bsd.port.arch.mk>

MODULES =		devel/cmake \
			devel/gettext \
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

# XXX PIE cannot be produced due to problems with inline assembly.
# Since OpenCV is mostly used as a library, switch to PIC.
.if ${ARCH:Mi386}
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -fPIC" \
			CXXFLAGS="${CXXFLAGS} -fPIC"
.endif

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

.if ${BUILD_PACKAGES:M-java}
MODULES +=		java
MODJAVA_VER =		1.7+
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
	@cd ${WRKBUILD}/bin; \
	failed=false; \
	for t in opencv_test*; do \
		echo "RUNNING TEST: $$t" >&2; \
		./$$t || failed=true; \
	done; \
	$$failed

.include <bsd.port.mk>
