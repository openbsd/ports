# $OpenBSD: Makefile,v 1.11 2009/09/28 19:50:59 ajacoutot Exp $

COMMENT =		multimedia framework - ffmpeg plugin

V =			0.10.5
DISTNAME =		gst-ffmpeg-$V
PKGNAME =		gstreamer-ffmpeg-$Vp5

MASTER_SITES =		${MASTER_SITE_GST:=gst-ffmpeg/}

LIB_DEPENDS =		gstreamer-0.10,gstbase-0.10:gstreamer->=0.10:$P/core \
			gstvideo-0.10::$P/plugins-base \
			avcodec.>=13.1,avformat.>=12,avutil.>=6,postproc.>=12:ffmpeg->=20080620p10:graphics/ffmpeg

AUTOCONF_VERSION =	2.62

MODULES +=	devel/gettext

WANTLIB += a52 bz2 faac faad glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m mp3lame ogg oil-0.3 pcre schroedinger-1.0
WANTLIB += theora vorbis vorbisenc x264 xml2 z

MODPY_RUNDEP =		No

CONFIGURE_ARGS +=	--with-system-ffmpeg

.include <bsd.port.mk>
