COMMENT-main=	complex camera support library
COMMENT-tools=	tools for libcamera
COMMENT-qcam=	qcam test application for libcamera

V=		0.7.2
DISTNAME=	libcamera-${V}
PKGNAME-tools=	libcamera-tools-${V}
PKGNAME-qcam=	libcamera-qcam-${V}
WRKDIST=	${WRKDIR}/libcamera-v${V}-191e202178f02430b5942397c70d215cdd2056fa

REVISION-main=	1

SHARED_LIBS += camera-base               0.0 # 0.7.2
SHARED_LIBS += camera                    0.0 # 0.7.2

CATEGORIES=	multimedia devel

HOMEPAGE=	https://libcamera.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD, GPLv2+, LGPLv2.1+, MIT...
# see ${WRKSRC}/LICENSES/*
PERMIT_PACKAGE=	Yes

SITES=		https://gitlab.freedesktop.org/camera/libcamera/-/archive/v${V}/

MULTI_PACKAGES=	-main -qcam -tools

WANTLIB-main += ${COMPILER_LIBCXX} epoll-shim execinfo glib-2.0 gnutls
WANTLIB-main += gobject-2.0 gstallocators-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB-main += gstvideo-1.0 m yaml-0 yuv

WANTLIB-tools += ${COMPILER_LIBCXX} SDL2 c camera camera-base epoll-shim
WANTLIB-tools += event_core event_pthreads jpeg tiff yaml-0

WANTLIB-qcam += ${COMPILER_LIBCXX} Qt6Core Qt6Gui Qt6OpenGL Qt6OpenGLWidgets
WANTLIB-qcam += Qt6Widgets c camera camera-base m tiff

MODULES=	devel/meson

BUILD_DEPENDS=	devel/py-ply \
		textproc/py-yaml \
		www/py-jinja2

LIB_DEPENDS-main=	devel/epoll-shim \
			devel/libyaml \
			multimedia/gstreamer1/plugins-base \
			multimedia/libyuv \
			security/gnutls

LIB_DEPENDS-tools=	${BASE_PKGPATH},-main \
			devel/libevent2 \
			devel/sdl2 \
			graphics/tiff

LIB_DEPENDS-qcam=	${BASE_PKGPATH},-main \
			x11/qt6/qtbase

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	-Dudev=disabled \
		-Dlibdw=disabled \
		-Dlibunwind=disabled \
		-Ddocumentation=disabled \
		-Dlc-compliance=disabled \
		-Dpycamera=disabled \
		-Dv4l2=disabled

# no media controller API on OpenBSD: the virtual pipeline handler and the
# OpenBSD specific uvcbsd handler (video(4) webcams) are the only ones that
# can work; neither uses an IPA module
CONFIGURE_ARGS +=	-Dpipelines=virtual,uvcbsd \
			-Dipas=[]

# needs lttng-ust
CONFIGURE_ARGS +=	-Dtracing=disabled

# display planes are RGB-plus-NV12 while UVC is YUYV/MJPEG-only
CONFIGURE_ARGS +=	-Dcam-output-kms=disabled

DEBUG_PACKAGES=	${BUILD_PACKAGES}

# compat shims for the Linux UAPI headers bundled in include/linux/, and
# the OpenBSD specific uvcbsd pipeline handler
post-extract:
	cp ${FILESDIR}/*.h ${WRKDIST}/include/linux/
	cp -R ${FILESDIR}/uvcbsd ${WRKDIST}/src/libcamera/pipeline/

.include <bsd.port.mk>
