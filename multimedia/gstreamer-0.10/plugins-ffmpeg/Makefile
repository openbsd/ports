# $OpenBSD: Makefile,v 1.25 2011/12/30 17:36:56 edd Exp $

COMMENT =		ffmpeg element for GStreamer

V =			0.10.12
DISTNAME =		gst-ffmpeg-$V
PKGNAME =		gstreamer-ffmpeg-$V

MASTER_SITES =		${MASTER_SITE_GST:=gst-ffmpeg/}

LIB_DEPENDS =		$P/core>=0.10 \
			$P/plugins-base \
			graphics/ffmpeg>=20111126

MODULES +=	devel/gettext

WANTLIB += avcodec avformat avutil bz2 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gsm gstaudio-0.10 gstbase-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0 m mp3lame
WANTLIB += ogg orc-0.4 pcre postproc schroedinger-1.0 speex swscale
WANTLIB += theoradec theoraenc vorbis vorbisenc vpx x264 xml2 z

CONFIGURE_ARGS +=	--with-system-ffmpeg \
			--disable-shave

.include <bsd.port.mk>
