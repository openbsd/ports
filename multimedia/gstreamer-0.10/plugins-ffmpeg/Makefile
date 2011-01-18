# $OpenBSD: Makefile,v 1.18 2011/01/18 11:37:40 landry Exp $

COMMENT =		ffmpeg element for GStreamer

V =			0.10.11
DISTNAME =		gst-ffmpeg-$V
PKGNAME =		gstreamer-ffmpeg-$V
REVISION =		0

MASTER_SITES =		${MASTER_SITE_GST:=gst-ffmpeg/}

LIB_DEPENDS =		$P/core>=0.10 \
			$P/plugins-base \
			graphics/ffmpeg>=20080620p10

# Should be 2.65
AUTOCONF_VERSION =	2.64

MODULES +=	devel/gettext

WANTLIB += bz2 faac faad glib-2.0 gmodule-2.0 gobject-2.0 gsm
WANTLIB += gthread-2.0 m mp3lame ogg pcre schroedinger-1.0
WANTLIB += speex theora vorbis vorbisenc x264 xml2 z orc-0.4
WANTLIB += gstreamer-0.10 gstbase-0.10 gstaudio-0.10 gstvideo-0.10
WANTLIB += gstinterfaces-0.10 avcodec avformat avutil postproc swscale

CONFIGURE_ARGS +=	--with-system-ffmpeg \
			--disable-shave

.include <bsd.port.mk>
