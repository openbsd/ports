# $OpenBSD: Makefile.inc,v 1.28 2014/04/01 16:31:40 ajacoutot Exp $

# Most frequent usage of the GStreamer packages:
# core          base library
# plugins-base  minimal set: gio, playback, Ogg Vorbis
# plugins-good  audio (sndio), volume control
# plugins-ugly  mp3 decoding, dvd
# plugins-bad   vaapi
# plugins-libav divx, mpeg4, h264, vp8 (same decoding capabilities as FFmpeg)
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

# GPLv2 - GPLv2+ - LGPLv2
PERMIT_PACKAGE_CDROM ?=	Yes
PERMIT_PACKAGE_FTP ?=	Yes
PERMIT_DISTFILES_FTP ?=	Yes

VERSION=		0.10
SUBST_VARS +=		VERSION

DIST_SUBDIR=		gstreamer
MASTER_SITE_GST=	http://gstreamer.freedesktop.org/src/
EXTRACT_SUFX?=		.tar.bz2
P=			multimedia/gstreamer-${VERSION}

.if defined(MULTI_PACKAGES)
.for i in ${MULTI_PACKAGES}
TEST_DEPENDS +=	${BASE_PKGPATH},${i}
.endfor
.else
TEST_DEPENDS +=	${BASE_PKGPATH}
.endif

MODULES +=		devel/gettext

USE_GMAKE ?=		Yes
AUTOCONF_VERSION ?=	2.68

BUILD_DEPENDS +=	devel/bison \
			devel/gobject-introspection

CONFIGURE_STYLE ?=	autoconf
CONFIGURE_ENV +=	CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="${LDFLAGS}"
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
			--disable-valgrind

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

CPPFLAGS +=		-I${LOCALBASE}/include \
			-I${X11BASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib \
			-L${X11BASE}/lib

.if !target(post-install)
post-install:
	rm ${PREFIX}/lib/gstreamer-${VERSION}/*.la
.endif
