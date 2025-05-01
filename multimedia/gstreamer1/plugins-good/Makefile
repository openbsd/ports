COMMENT=		good elements for GStreamer

DISTNAME=		gst-plugins-good-${V}

SITES=			${SITE_GST:=gst-plugins-good/}

# Override ../Makefile.inc for C++ plugins
COMPILER_LANGS=		c c++

WANTLIB += ${COMPILER_LIBCXX} FLAC X11 Xdamage Xext Xfixes Xtst
WANTLIB += bz2 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0
WANTLIB += gstgl-1.0 gstnet-1.0 gstpbutils-1.0 gstreamer-1.0 gstriff-1.0
WANTLIB += gstrtp-1.0 gstrtsp-1.0 gstsdp-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gtk-3 intl jpeg m mp3lame nettle opencore-amrnb opencore-amrwb
WANTLIB += orc-0.4 png shout speex tag twolame vpx wavpack xml2
WANTLIB += z

LIB_DEPENDS=		multimedia/gstreamer1/plugins-base=${V} \
			archivers/bzip2 \
			audio/flac \
			audio/lame \
			audio/opencore-amr \
			audio/speex \
			audio/taglib \
			audio/twolame \
			audio/wavpack \
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

# XXX
# ../gst-plugins-good-1.26.1/sys/v4l2/gstv4l2object.c:601:25: error: use of undeclared identifier 'v4l2_ioctl_wrapper'
CONFIGURE_ARGS +=	-Dv4l2=disabled

.if ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS +=	devel/nasm
.endif

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
