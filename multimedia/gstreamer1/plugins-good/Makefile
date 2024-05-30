COMMENT=		good elements for GStreamer

DISTNAME=		gst-plugins-good-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-good-${V}

SITES=			${SITE_GST:=gst-plugins-good/}

WANTLIB += ${COMPILER_LIBCXX} FLAC X11 Xdamage Xext Xfixes Xtst
WANTLIB += bz2 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gstallocators-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstgl-1.0 gstnet-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gstriff-1.0 gstrtp-1.0 gstrtsp-1.0 gstsdp-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gtk-3 intl jpeg m mp3lame nettle
WANTLIB += opencore-amrnb opencore-amrwb orc-0.4 png shout speex
WANTLIB += tag twolame v4l2 vpx wavpack xml2 z

LIB_DEPENDS=		${P}/plugins-base=${V} \
			archivers/bzip2 \
			audio/flac \
			audio/lame \
			audio/opencore-amr \
			audio/speex \
			audio/taglib \
			audio/twolame \
			audio/wavpack \
			multimedia/libv4l \
			multimedia/libvpx \
			net/libshout \
			x11/gtk+3

# dlopen()
WANTLIB += soup-3.0
BUILD_DEPENDS +=	devel/libsoup3
RUN_DEPENDS +=		devel/libsoup3

CONFIGURE_ARGS=		-Daalib=disabled \
			-Ddirectsound=disabled \
			-Ddv=disabled \
			-Ddv1394=disabled \
			-Dwaveform=disabled \
			-Djack=disabled \
			-Dlibcaca=disabled \
			-Dmpg123=disabled \
			-Doss=disabled \
			-Doss4=disabled \
			-Dosxaudio=disabled \
			-Dosxvideo=disabled \
			-Dpulse=disabled \
			-Dqt5=disabled \
			-Dqt6=disabled \
			-Dwaveform=disabled \
			-Dv4l2-gudev=disabled \
			-Drpicamsrc=disabled

.if ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS +=	devel/nasm
.endif

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
