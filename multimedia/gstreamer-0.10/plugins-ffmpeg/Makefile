# $OpenBSD: Makefile,v 1.46 2019/07/13 20:32:35 naddy Exp $

COMMENT=		ffmpeg element for GStreamer

V=			0.10.13
DISTNAME=		gst-ffmpeg-${V}
PKGNAME=		gstreamer-ffmpeg-${V}
REVISION=		16

WANTLIB += bz2 ffi glib-2.0 gmodule-2.0 gobject-2.0 gstaudio-0.10
WANTLIB += gstbase-0.10 gstinterfaces-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gstvideo-0.10 gthread-2.0 iconv intl lzma m
WANTLIB += orc-0.4 pcre pthread xml2 z

MASTER_SITES=		${MASTER_SITE_GST:=gst-ffmpeg/}

LIB_DEPENDS=		${P}/plugins-base

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS +=	devel/yasm
.endif

ffmpeg_CONFIGURE_ARGS=	--arch=${MACHINE_ARCH} \
			--cc=${CC} \
			--enable-gpl \
			--disable-altivec \
			--disable-armvfp \
			--disable-debug \
			--disable-iwmmxt \
			--disable-neon

CONFIGURE_ARGS=		--with-ffmpeg-extra-configure="${ffmpeg_CONFIGURE_ARGS}"

MAKE_ENV=		V=1

# make sure bundled libav headers are chosen over the system FFmpeg ones
CPPFLAGS +=		-I../../gst-libs -I../../gst-libs/ext/libav

.if ${MACHINE_ARCH} == "i386"
LDFLAGS +=		-Wl,-znotext
.endif

.include <bsd.port.mk>
