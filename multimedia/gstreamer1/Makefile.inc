# Most frequent usage of the GStreamer packages:
# core		base library
# plugins-base	minimal set: audio (sndio), gio, playback, Ogg Vorbis
# plugins-good	base audio, video and graphic codecs
# plugins-ugly	dvd
# plugins-bad	vaapi
# libav		mp3, mp4, h264, vp8 (same decoding capabilities as FFmpeg)
#
# Most applications that use GStreamer require:
#     gst-plugins-base and gst-plugins-good
# Support for most audio and video codecs is provided by
#     gst-libav

PORTROACH=		limitw:1,even

V ?=			1.24.12
API=			1.0
SUBST_VARS +=		API

CATEGORIES ?=		multimedia devel

HOMEPAGE ?=		http://gstreamer.freedesktop.org/

MAINTAINER ?=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - GPLv2+ - LGPLv2
# docs: BSD - CC-BY-SA-4.0 - LGPLv2.1 - MIT - OPL
PERMIT_PACKAGE ?=	Yes

DIST_SUBDIR=		gstreamer
SITE_GST=		http://gstreamer.freedesktop.org/src/
EXTRACT_SUFX ?=		.tar.xz

COMPILER=		base-clang ports-gcc
COMPILER_LANGS ?=	c

.if empty(CONFIGURE_STYLE)
MODULES +=		devel/meson
BUILD_DEPENDS +=	devel/gettext,-tools # -Dnls
# X11BASE needed (at least) to find libdrm/drm_fourcc.h in plugins-base
CONFIGURE_ENV +=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.if ! ${.CURDIR:M*py-gstreamer} && ! ${.CURDIR:M*editing-services} && \
    ! ${.CURDIR:M*devtools}
CONFIGURE_ARGS +=	-Dpackage-name="OpenBSD ${DISTNAME} package"
CONFIGURE_ARGS +=	-Dpackage-origin="https://www.openbsd.org/"
.endif

# BDEP on hotdoc
.if ! ${.CURDIR:M*py-gstreamer}
CONFIGURE_ARGS +=	-Ddoc=disabled
.endif

# BDEP on gtk+3, gmp, gsl
.if ! ${.CURDIR:M*libav} && ! ${.CURDIR:M*plugins-ugly} && \
    ! ${.CURDIR:M*py-gstreamer}
.  if ! ${.CURDIR:M*devtools}
CONFIGURE_ARGS +=	-Dexamples=disabled
.  endif
CONFIGURE_ARGS +=	-Dtests=disabled
.endif

.endif
