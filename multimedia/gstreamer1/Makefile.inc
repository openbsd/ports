# $OpenBSD: Makefile.inc,v 1.1 2012/09/06 12:57:49 ajacoutot Exp $

# Most frequent usage of the GStreamer packages:
# core		base library
# plugins-base	minimal set: gio, playback, Ogg Vorbis
# plugins-good	audio (sndio), volume control
# plugins-ugly	mp3 decoding, dvd
# plugins-bad	vaapi
# plugins-libav	divx, mpeg4, h264, vp8 (same decoding capabilities as FFmpeg)
#
# i.e. applications that use GStreamer require:
#     gstreamer-plugins-base and gstreamer-plugins-good
# audio/video support for MP3 decoding requires:
#     gstreamer-plugins-ugly
# support for most video codecs is provided by
#     gstreamer-plugins-ffmpeg

SHARED_ONLY=		Yes

CATEGORIES ?=		multimedia devel

HOMEPAGE ?=		http://gstreamer.freedesktop.org/

MAINTAINER ?=		Antoine Jacoutot <ajacoutot@openbsd.org>

GST_PKGNAME_PREFIX=	gstreamer1

# GPLv2 - GPLv2+ - LGPLv2
PERMIT_PACKAGE_CDROM ?=	Yes
PERMIT_PACKAGE_FTP ?=	Yes
PERMIT_DISTFILES_CDROM ?=	Yes
PERMIT_DISTFILES_FTP ?=	Yes

VERSION=		1.0
SUBST_VARS +=		VERSION

DIST_SUBDIR=		gstreamer
MASTER_SITE_GST=	http://gstreamer.freedesktop.org/src/
EXTRACT_SUFX ?=		.tar.xz
P=			multimedia/${GST_PKGNAME_PREFIX}

.if defined(MULTI_PACKAGES)
.for i in ${MULTI_PACKAGES}
REGRESS_DEPENDS +=	${BASE_PKGPATH},${i}
.endfor
.else
REGRESS_DEPENDS +=	${BASE_PKGPATH}
.endif

MODULES +=		devel/gettext

USE_GMAKE ?=		Yes
USE_LIBTOOL ?=		Yes
LIBTOOL_FLAGS ?=	--tag=disable-static
AUTOCONF_VERSION ?=	2.69

BUILD_DEPENDS +=	devel/bison \
			devel/gobject-introspection

CONFIGURE_STYLE ?=	autoconf
CONFIGURE_ENV +=	CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="${LDFLAGS}" \
			ac_cv_path_PYTHON="" # only used to generate documentation
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-package-name="OpenBSD ${DISTNAME} package" \
			--with-package-origin="http://www.openbsd.org/" \
			--with-default-audiosink=sndiosink \
			--with-default-audiosrc=sndiosrc \
			--with-default-videosink=xvimagesink \
			--with-default-videosrc=v4l2src \
			--with-default-visualizer=goom \
			--enable-introspection \
			--disable-gtk-doc \
			--disable-valgrind \
			--disable-static

CPPFLAGS +=		-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng \
			-I${X11BASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib \
			-L${X11BASE}/lib

.if !target(post-install)
post-install:
	rm ${PREFIX}/lib/gstreamer-${VERSION}/*.la
.endif
