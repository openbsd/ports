# $OpenBSD: Makefile,v 1.16 2012/12/29 20:49:17 landry Exp $

ONLY_FOR_ARCHS=		${GCC4_ARCHS}

BROKEN-sparc64 = 	error: cannot convert 'int*' to 'volatile _Atomic_word*'
SHARED_ONLY=		Yes

COMMENT-main=		library of programming functions for real time cv
COMMENT-docs=		documentation for OpenCV

V=			2.2.0
DISTNAME=		OpenCV-$V
PKGNAME-main=		opencv-$V
REVISION-main=		7
PKGNAME-docs=		opencv-docs-$V
REVISION-docs=		1
CATEGORIES=		graphics devel

SHARED_LIBS +=		opencv_calib3d			0.0
SHARED_LIBS +=		opencv_contrib			0.0
SHARED_LIBS +=		opencv_core			0.0
SHARED_LIBS +=		opencv_features2d		0.0
SHARED_LIBS +=		opencv_flann			0.0
SHARED_LIBS +=		opencv_gpu			0.0
SHARED_LIBS +=		opencv_highgui			0.0
SHARED_LIBS +=		opencv_imgproc			0.0
SHARED_LIBS +=		opencv_legacy			0.0
SHARED_LIBS +=		opencv_ml			0.0
SHARED_LIBS +=		opencv_objdetect		0.0
SHARED_LIBS +=		opencv_video			0.0

HOMEPAGE=		http://opencv.willowgarage.com/

MAINTAINER=		Rafael Sadowski <rafael@sizeofvoid.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=opencvlibrary/}
EXTRACT_SUFX=		.tar.bz2

WANTLIB += GL Half Iex IlmImf Imath X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 avcodec avformat avutil bz2 c cairo
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gsm gstapp-0.10
WANTLIB += gstbase-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += gtk-x11-2.0 jasper jpeg m mp3lame ogg orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += schroedinger-1.0 speex stdc++ swscale theoradec theoraenc
WANTLIB += tiff vorbis vorbisenc vpx x264 xcb xcb-render xcb-shm
WANTLIB += xml2 z ${MODPY_WANTLIB}

MODULES=		devel/cmake \
			devel/gettext \
			lang/python

MULTI_PACKAGES= 	-main -docs

CONFIGURE_STYLE=	cmake
LIB_DEPENDS-main=	multimedia/gstreamer-0.10/plugins-base \
			x11/gtk+2 \
			graphics/ilmbase \
			graphics/openexr \
			graphics/ffmpeg

WANTLIB-docs=		# empty
LIB_DEPENDS-docs=	# empty
RUN_DEPENDS-docs=	# empty
PKG_ARCH-docs=		*

USE_LIBTOOL=		Yes

VMEM_WARNING=		Yes

RUN_DEPENDS-main=	math/py-numpy
BUILD_DEPENDS=		devel/doxygen \
			math/py-numpy

# ATM opencv requires V4L1 compat, ask them to change it,
# then see WITH_V4L below.
CONFIGURE_ARGS+=	-DBUILD_EXAMPLES:Bool=Off \
			-DINSTALL_C_EXAMPLES:Bool=Off \
			-DINSTALL_PYTHON_EXAMPLES:Bool=Off \
			-DBUILD_PYTHON_SUPPORT:Bool=On \
			-DBUILD_LATEX_DOCS:Bool=Off \
			-DWITH_GTK:Bool=On \
			-DWITH_V4L:Bool=Off \
			-DWITH_EIGEN2:Bool=Off \
			-DWITH_GSTREAMER:Bool=On \
			-DWITH_1394:Bool=Off \
			-DWITH_FFMPEG:Bool=On

MAKE_ENV+=		DOXYGEN_ENCODE_PATH_STRIP=${WRKSRC}

pre-patch:
	perl -i -pe 's/\r$$//' ${WRKSRC}/CMakeLists.txt

post-configure:
	find ${WRKSRC} -type f -iname "*.make" -exec \
		perl -pi -e 's/(CXX_DEFINES =).*/$1/' {} \;

.include <bsd.port.mk>
