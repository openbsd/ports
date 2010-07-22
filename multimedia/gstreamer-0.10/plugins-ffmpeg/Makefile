# $OpenBSD: Makefile,v 1.15 2010/07/22 19:21:31 ajacoutot Exp $

COMMENT =		ffmpeg element for GStreamer

V =			0.10.11
DISTNAME =		gst-ffmpeg-$V
PKGNAME =		gstreamer-ffmpeg-$V

MASTER_SITES =		${MASTER_SITE_GST:=gst-ffmpeg/}

LIB_DEPENDS =		:gstreamer->=0.10:$P/core \
			::$P/plugins-base \
			:ffmpeg->=20080620p10:graphics/ffmpeg

AUTOCONF_VERSION =	2.65

MODULES +=	devel/gettext

WANTLIB += bz2 faac faad glib-2.0 gmodule-2.0 gobject-2.0 gsm
WANTLIB += gthread-2.0 m mp3lame ogg oil-0.3 pcre schroedinger-1.0
WANTLIB += speex theora vorbis vorbisenc x264 xml2 z orc-0.4
WANTLIB += gstreamer-0.10 gstbase-0.10 gstaudio-0.10 gstvideo-0.10
WANTLIB += gstinterfaces-0.10 avcodec avformat avutil postproc swscale

CONFIGURE_ARGS +=	--with-system-ffmpeg \
			--disable-shave

.include <bsd.port.mk>
