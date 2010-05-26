# $OpenBSD: Makefile,v 1.13 2010/05/26 22:39:02 jakemsr Exp $

COMMENT =		ffmpeg element for GStreamer

V =			0.10.10
DISTNAME =		gst-ffmpeg-$V
PKGNAME =		gstreamer-ffmpeg-$V

MASTER_SITES =		${MASTER_SITE_GST:=gst-ffmpeg/}

LIB_DEPENDS =		gstreamer-0.10,gstbase-0.10:gstreamer->=0.10:$P/core \
			gstaudio-0.10,gstvideo-0.10,gstinterfaces-0.10::$P/plugins-base \
			avcodec.>=14,avformat.>=13,avutil.>=7,postproc.>=13,swscale.>=2:ffmpeg->=20080620p10:graphics/ffmpeg

AUTOCONF_VERSION =	2.65

MODULES +=	devel/gettext

WANTLIB += bz2 faac faad glib-2.0 gmodule-2.0 gobject-2.0 gsm
WANTLIB += gthread-2.0 m mp3lame ogg oil-0.3 pcre schroedinger-1.0
WANTLIB += speex theora vorbis vorbisenc x264 xml2 z

CONFIGURE_ARGS +=	--with-system-ffmpeg

.include <bsd.port.mk>
