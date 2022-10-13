# Reenable that port on non-rust archs at the cost of pulseaudio support:
# pulseaudio -> [...] -> spidermonkey>=78 -> rust
ONLY_FOR_ARCHS-pulse=	${RUST_ARCHS}

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
WANTLIB-main += ${COMPILER_LIBCXX} FLAC X11 Xdamage Xext Xfixes bz2
WANTLIB-main += cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0 gmodule-2.0
WANTLIB-main += gstallocators-1.0 gstfft-1.0 gstgl-1.0 gstnet-1.0 gstpbutils-1.0
WANTLIB-main += gstriff-1.0 gstrtp-1.0 gstrtsp-1.0 gstsdp-1.0 gsttag-1.0
WANTLIB-main += gstvideo-1.0 gtk-3 jpeg m mp3lame orc-0.4 png shout
WANTLIB-main += speex tag twolame v4l2 vpx wavpack z

WANTLIB-pulse += ${WANTLIB} pulse

MULTI_PACKAGES=		-main -pulse

LIB_DEPENDS=		${P}/plugins-base=${V}

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			archivers/bzip2 \
			audio/flac \
			audio/lame \
			audio/speex \
			audio/taglib \
			audio/twolame \
			audio/wavpack \
			multimedia/libv4l \
			multimedia/libvpx \
			net/libshout \
			x11/gtk+3

# dlopen()
WANTLIB-main += soup-3.0
BUILD_DEPENDS +=	devel/libsoup3
RUN_DEPENDS-main +=	devel/libsoup3

LIB_DEPENDS-pulse=	${LIB_DEPENDS} \
			audio/pulseaudio
RUN_DEPENDS-pulse=	${BASE_PKGPATH},-main=${V}

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
			-Dqt5=disabled \
			-Dwaveform=disabled \
			-Dv4l2-gudev=disabled \
			-Drpicamsrc=disabled

.if ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS +=	devel/nasm
.endif

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.arch.mk>
.if !${BUILD_PACKAGES:M-pulse}
CONFIGURE_ARGS +=	-Dpulse=disabled
.endif

.include <bsd.port.mk>
