# $OpenBSD: Makefile,v 1.66 2019/09/25 22:48:02 ajacoutot Exp $

# XXX ossaudio(3) is only enabled to be used as a mixing device by
# x11/xfce4/xfce4-mixer

COMMENT-main=		good elements for GStreamer
COMMENT-pulse=		pulseaudio(1) element for GStreamer

DISTNAME=		gst-plugins-good-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-good-${V}

PKGNAME-main=		${PKGNAME}
PKGNAME-pulse=		${GST_PKGNAME_PREFIX}-plugins-pulse-${V}

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-good/}

WANTLIB += glib-2.0 gobject-2.0 gstaudio-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB += intl

WANTLIB-main +=	${WANTLIB}
WANTLIB-main += FLAC X11 Xdamage Xext Xfixes bz2 cairo cairo-gobject
WANTLIB-main += gdk-3 gdk_pixbuf-2.0 gio-2.0 gstallocators-1.0 gstfft-1.0
WANTLIB-main += gstgl-1.0 gstnet-1.0 gstpbutils-1.0 gstriff-1.0 gstrtp-1.0
WANTLIB-main += gstrtsp-1.0 gstsdp-1.0 gsttag-1.0 gtk-3 jpeg m orc-0.4 png
WANTLIB-main += shout soup-2.4 speex tag twolame v4l2 vpx wavpack z
WANTLIB-main +=	gstvideo-1.0

# comes from multimedia/libvpx using lang/clang MODULE on i386|amd64 only
# which includes gcc4 MODULE with adds gcc-libs in dependency scope
.if ${MACHINE_ARCH:Mi386} || ${MACHINE_ARCH:Mamd64}
WANTLIB-main += $(LIBECXX)
.endif

WANTLIB-pulse += ${WANTLIB} pulse

MULTI_PACKAGES=		-main -pulse

LIB_DEPENDS=		${P}/plugins-base=${V}

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			archivers/bzip2 \
			audio/flac \
			audio/speex \
			audio/taglib \
			audio/twolame \
			audio/wavpack \
			devel/libsoup \
			multimedia/libv4l \
			multimedia/libvpx \
			net/libshout \
			x11/gtk+3

LIB_DEPENDS-pulse=	${LIB_DEPENDS} \
			audio/pulseaudio
RUN_DEPENDS-pulse=	${BASE_PKGPATH},-main=${V}

CONFIGURE_ARGS=		-Daalib=disabled \
			-Ddirectsound=disabled \
			-Ddv=disabled \
			-Ddv1394=disabled \
			-Dwaveform=disabled \
			-Djack=disabled \
			-Dlame=disabled \
			-Dlibcaca=disabled \
			-Dmpg123=disabled \
			-Doss4=disabled \
			-Dosxaudio=disabled \
			-Dosxvideo=disabled \
			-Dqt5=disabled \
			-Dwaveform=disabled \
			-Dv4l2-gudev=disabled

pre-configure:
	sed -i 's,/dev/dsp,/dev/audio,g' \
		${WRKSRC}/docs/plugins/gst-plugins-good-plugins.args \
		${WRKSRC}/docs/plugins/html/gst-plugins-good-plugins-osssink.html \
		${WRKSRC}/docs/plugins/html/gst-plugins-good-plugins-osssrc.html \
		${WRKSRC}/sys/oss/gstosssink.c \
		${WRKSRC}/sys/oss/gstosssrc.c

.include <bsd.port.mk>
