# $OpenBSD: Makefile.inc,v 1.70 2021/10/30 11:38:00 ajacoutot Exp $

# Most frequent usage of the GStreamer packages:
# core		base library
# plugins-base	minimal set: audio (sndio), gio, playback, Ogg Vorbis
# plugins-good	base audio, video and graphic codecs
# plugins-ugly	dvd
# plugins-bad	vaapi
# plugins-libav	divx, mp3, mpeg4, h264, vp8 (same decoding capabilities as FFmpeg)
#
# Most applications that use GStreamer require:
#     gstreamer1-plugins-base and gstreamer1-plugins-good
# Support for most audio and video codecs is provided by
#     gstreamer1-plugins-libav

PORTROACH=		limitw:1,even

V ?=			1.18.5
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
# X11BASE needed (at least) to find libdrm/drm_fourcc.h in plugins-base
CONFIGURE_ENV +=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	-Dpackage-name="OpenBSD ${DISTNAME} package" \
			-Dpackage-origin="https://www.openbsd.org/"

# BDEP on gtk+3, gmp, gsl
CONFIGURE_ARGS +=	-Dexamples=disabled
CONFIGURE_ARGS +=	-Dtests=disabled

# requires hotdoc
CONFIGURE_ARGS +=	-Ddoc=disabled

.endif
