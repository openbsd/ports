# $OpenBSD: Makefile.inc,v 1.61 2019/09/25 22:48:02 ajacoutot Exp $

# Most frequent usage of the GStreamer packages:
# core		base library
# plugins-base	minimal set: audio (sndio), gio, playback, Ogg Vorbis
# plugins-good	audio mixer (oss)
# plugins-ugly	dvd
# plugins-bad	vaapi
# plugins-libav	divx, mp3, mpeg4, h264, vp8 (same decoding capabilities as FFmpeg)
#
# Most applications that use GStreamer require:
#     gstreamer1-plugins-base and gstreamer1-plugins-good
# Support for most audio and video codecs is provided by
#     gstreamer1-plugins-libav

PORTROACH=		limitw:1,even

V ?=			1.16.1
API=			1.0
SUBST_VARS +=		API

CATEGORIES ?=		multimedia devel

HOMEPAGE ?=		http://gstreamer.freedesktop.org/

MAINTAINER ?=		Antoine Jacoutot <ajacoutot@openbsd.org>

GST_PKGNAME_PREFIX=	gstreamer1

# GPLv2 - GPLv2+ - LGPLv2
PERMIT_PACKAGE ?=	Yes

DIST_SUBDIR=		gstreamer
MASTER_SITE_GST=	http://gstreamer.freedesktop.org/src/
EXTRACT_SUFX ?=		.tar.xz
P=			multimedia/${GST_PKGNAME_PREFIX}

COMPILER=		base-clang ports-gcc
COMPILER_LANGS ?=	c

.if empty(CONFIGURE_STYLE)
MODULES +=		devel/meson
BUILD_DEPENDS +=	devel/gettext,-tools # -Dnls
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	-Dbenchmarks=disabled \
			-Dgtk_doc=disabled \
			-Dpackage-name="OpenBSD ${DISTNAME} package" \
			-Dpackage-origin="https://www.openbsd.org/"

# some BDEP on gtk+2|gtk+3
CONFIGURE_ARGS +=	-Dexamples=disabled
CONFIGURE_ARGS +=	-Dtests=disabled
.endif
