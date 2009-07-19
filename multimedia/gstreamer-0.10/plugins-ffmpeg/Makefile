# $OpenBSD: Makefile,v 1.9 2009/07/19 22:49:12 sthen Exp $

COMMENT =		multimedia framework - ffmpeg plugin

V =			0.10.5
DISTNAME =		gst-ffmpeg-$V
PKGNAME =		gstreamer-ffmpeg-$Vp3

MASTER_SITES =		${MASTER_SITE_GST:=gst-ffmpeg/}

LIB_DEPENDS =		gstreamer-0.10,gstbase-0.10:gstreamer->=0.10:$P/core \
			gstvideo-0.10::$P/plugins-base \
			avcodec.>=13.1,avformat.>=12,avutil.>=6,postproc.>=12:ffmpeg->=20080620p10:graphics/ffmpeg

AUTOCONF_VERSION =	2.62

WANTLIB += a52 bz2 faac faad glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 iconv intl m mp3lame ogg oil-0.3 pcre schroedinger-1.0
WANTLIB += theora vorbis vorbisenc x264 xml2 z

CONFIGURE_ARGS +=	--with-system-ffmpeg

.include <bsd.port.mk>
