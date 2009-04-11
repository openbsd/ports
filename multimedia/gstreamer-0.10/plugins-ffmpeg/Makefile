# $OpenBSD: Makefile,v 1.7 2009/04/11 14:37:21 ajacoutot Exp $

COMMENT =		multimedia framework - ffmpeg plugin

V =			0.10.5
DISTNAME =		gst-ffmpeg-$V
PKGNAME =		gstreamer-ffmpeg-$Vp1

MASTER_SITES =		${MASTER_SITE_GST:=gst-ffmpeg/}

LIB_DEPENDS =		gstreamer-0.10,gstbase-0.10:gstreamer->=0.10:$P/core \
			gstvideo-0.10::$P/plugins-base \
			postproc.>=11,avcodec.>=11,avformat.>=11,avutil.>=5::graphics/ffmpeg

AUTOCONF_VERSION =	2.62

WANTLIB += 		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 iconv
WANTLIB += 		intl m pcre xml2 z oil-0.3
WANTLIB += 		a52 faac faad mp3lame ogg theora vorbis vorbisenc x264
WANTLIB +=		bz2

CONFIGURE_ARGS +=	--with-system-ffmpeg

.include <bsd.port.mk>
