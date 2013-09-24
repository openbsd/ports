# $OpenBSD: Makefile,v 1.16 2013/09/24 18:30:47 ajacoutot Exp $

COMMENT=		ffmpeg elements for GStreamer

DISTNAME=		gst-libav-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-libav-${V}

# sync with graphics/ffmpeg
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += bz2 glib-2.0 gobject-2.0 gstaudio-1.0 gstbase-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gstvideo-1.0 m pthread z

MASTER_SITES=		${MASTER_SITE_GST:=gst-libav/}

LIB_DEPENDS=		${P}/plugins-base=${V}

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS +=	devel/yasm
.endif

.if ${MACHINE_ARCH:Marm}
# uses ARM EABI
GST_LIBAV_ARCH=		generic
.else
GST_LIBAV_ARCH=		${MACHINE_ARCH}
.endif

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/gst-libs/ext/libav

libav_CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
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

CONFIGURE_ARGS=		--with-libav-extra-configure="${libav_CONFIGURE_ARGS}"

# needs orc >= 0.4.16
CONFIGURE_ARGS +=	--disable-orc

MAKE_ENV=		V=1

# libavcodec.a(log2_tab.o)(.rodata+0x0): multiple definition of `ff_log2_tab'
USE_LIBTOOL=		no

# make sure bundled libav headers are chosen over the system FFmpeg ones
CPPFLAGS +=		-I../../gst-libs -I../../gst-libs/ext/libav

.include <bsd.port.mk>
