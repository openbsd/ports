# $OpenBSD: Makefile.inc,v 1.57 2019/05/20 22:15:17 naddy Exp $

# Most frequent usage of the GStreamer packages:
# core		base library
# plugins-base	minimal set: audio (sndio), gio, playback, Ogg Vorbis
# plugins-good	audio mixer (oss)
# plugins-ugly	mp3 decoding, dvd
# plugins-bad	vaapi
# plugins-libav	divx, mpeg4, h264, vp8 (same decoding capabilities as FFmpeg)
#
# i.e. applications that use GStreamer require:
#     gstreamer1-plugins-base and gstreamer1-plugins-good
# audio/video support for MP3 decoding requires:
#     gstreamer1-plugins-ugly or gstreamer1-plugins-libav
# support for most video codecs is provided by
#     gstreamer1-plugins-libav

PORTROACH=		limitw:1,even

V ?=			1.16.0
API=			1.0
SUBST_VARS +=		API

CATEGORIES ?=		multimedia devel

HOMEPAGE ?=		http://gstreamer.freedesktop.org/

MAINTAINER ?=		Antoine Jacoutot <ajacoutot@openbsd.org>

GST_PKGNAME_PREFIX=	gstreamer1

# GPLv2 - GPLv2+ - LGPLv2
PERMIT_PACKAGE_CDROM ?=	Yes
PERMIT_PACKAGE_FTP ?=	Yes
PERMIT_DISTFILES_FTP ?=	Yes

DIST_SUBDIR=		gstreamer
MASTER_SITE_GST=	http://gstreamer.freedesktop.org/src/
EXTRACT_SUFX ?=		.tar.xz
P=			multimedia/${GST_PKGNAME_PREFIX}

COMPILER=		base-clang ports-gcc base-gcc
COMPILER_LANGS ?=	c
MODGCC4_ARCHS ?=	powerpc

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
