# $OpenBSD: Makefile,v 1.29 2012/09/06 12:37:58 ajacoutot Exp $

COMMENT=		ffmpeg element for GStreamer

V=			0.10.13
DISTNAME=		gst-ffmpeg-${V}
PKGNAME=		gstreamer-ffmpeg-${V}
REVISION=		2

WANTLIB += avcodec avformat avutil bz2 ffi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gsm gstaudio-0.10 gstbase-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += m mp3lame ogg orc-0.4 pcre postproc pthread schroedinger-1.0
WANTLIB += speex swscale theoradec theoraenc vorbis vorbisenc
WANTLIB += vpx x264 xml2 xvidcore z

MASTER_SITES=		${MASTER_SITE_GST:=gst-ffmpeg/}

LIB_DEPENDS=		${P}/plugins-base \
			graphics/ffmpeg

CONFIGURE_ARGS=		--with-system-ffmpeg \
			--disable-shave

.include <bsd.port.mk>
