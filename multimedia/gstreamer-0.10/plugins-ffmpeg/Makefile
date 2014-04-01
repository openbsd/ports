# $OpenBSD: Makefile,v 1.35 2014/04/01 16:31:40 ajacoutot Exp $

COMMENT=		ffmpeg element for GStreamer

V=			0.10.13
DISTNAME=		gst-ffmpeg-${V}
PKGNAME=		gstreamer-ffmpeg-${V}
REVISION=		8

# sync with graphics/ffmpeg
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += bz2 ffi glib-2.0 gmodule-2.0 gobject-2.0 gstaudio-0.10
WANTLIB += gstbase-0.10 gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10
WANTLIB += gstvideo-0.10 gthread-2.0 m orc-0.4 pcre pthread xml2
WANTLIB += z

MASTER_SITES=		${MASTER_SITE_GST:=gst-ffmpeg/}

LIB_DEPENDS=		${P}/plugins-base

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS +=	devel/yasm
.endif

.if ${MACHINE_ARCH:Marm}
# uses ARM EABI
GST_LIBAV_ARCH=		generic
.else
GST_LIBAV_ARCH=		${MACHINE_ARCH}
.endif

ffmpeg_CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
			--arch=${GST_LIBAV_ARCH} \
			--cc=${CC} \
			--enable-gpl \
			--disable-altivec \
			--disable-armv5te \
			--disable-armv6 \
			--disable-armv6t2 \
			--disable-armvfp \
			--disable-debug \
			--disable-iwmmxt

CONFIGURE_ARGS=		--with-ffmpeg-extra-configure="${ffmpeg_CONFIGURE_ARGS}"

MAKE_ENV=		V=1

# make sure bundled libav headers are chosen over the system FFmpeg ones
CPPFLAGS +=		-I../../gst-libs -I../../gst-libs/ext/libav

.include <bsd.port.mk>
