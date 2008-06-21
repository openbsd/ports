# $OpenBSD: Makefile,v 1.3 2008/06/21 21:03:55 deanna Exp $

COMMENT =		multimedia framework - ffmpeg plugin

V =			0.10.4
DISTNAME =		gst-ffmpeg-$V
PKGNAME-main =		gstreamer-ffmpeg-$Vp0


MASTER_SITES =		${MASTER_SITE_GST:=gst-ffmpeg/}

LIB_DEPENDS =		gstreamer-0.10,gstbase-0.10:gstreamer->=0.10:$P/core \
			gstvideo-0.10::$P/plugins-base \
			postproc.>=11,avcodec.>=11,avformat.>=11,avutil.>=5::graphics/ffmpeg

WANTLIB += 		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 iconv
WANTLIB += 		intl m pcre xml2 z oil-0.3
WANTLIB += 		a52 faac faad mp3lame ogg theora vorbis vorbisenc x264



CONFIGURE_ARGS +=	--with-system-ffmpeg

.include <bsd.port.mk>
