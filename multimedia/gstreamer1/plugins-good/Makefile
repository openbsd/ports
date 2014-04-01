# $OpenBSD: Makefile,v 1.25 2014/04/01 16:31:41 ajacoutot Exp $

# XXX ossaudio(3) is only enabled to be used as a mixing device by
# x11/xfce4/xfce4-mixer

COMMENT-main=		good elements for GStreamer
COMMENT-pulse=		pulseaudio(1) element for GStreamer

DISTNAME=		gst-plugins-good-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-good-${V}

PKGNAME-main=		${PKGNAME}
PKGNAME-pulse=		${GST_PKGNAME_PREFIX}-plugins-pulse-${V}

REVISION-main=		0
REVISION-pulse=		0

WANTLIB += ffi glib-2.0 gmodule-2.0 gobject-2.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += m orc-0.4 pcre pthread z ICE SM X11 Xext xcb

WANTLIB-main +=	${WANTLIB}
WANTLIB-main += FLAC Xdamage Xfixes Xv bz2 xml2 pthread-stubs
WANTLIB-main += gdk_pixbuf-2.0 gio-2.0 gstcontroller-1.0 gstallocators-1.0
WANTLIB-main += gstfft-1.0 gstnet-1.0 gstriff-1.0 gstrtp-1.0 gstrtsp-1.0 xcb-render
WANTLIB-main += gstsdp-1.0 jpeg ogg ossaudio png shout soup-2.4
WANTLIB-main += speex sqlite3 stdc++ tag theora vorbis vpx wavpack xcb-shm
WANTLIB-main += Xrender cairo cairo-gobject expat fontconfig freetype pixman-1

WANTLIB-pulse += ${WANTLIB}
WANTLIB-pulse += execinfo gdbm pulse sndfile X11-xcb Xi Xtst
WANTLIB-pulse += FLAC ogg vorbis vorbisenc dbus-1 json-c

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-good/}

MULTI_PACKAGES=		-main -pulse

LIB_DEPENDS=		${P}/plugins-base=${V}

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			archivers/bzip2 \
			audio/flac \
			audio/speex \
			audio/taglib \
			audio/wavpack \
			devel/libsoup \
			graphics/gdk-pixbuf2 \
			multimedia/libvpx \
			net/libshout

LIB_DEPENDS-pulse=	${LIB_DEPENDS} \
			audio/pulseaudio
RUN_DEPENDS-pulse=	${BASE_PKGPATH},-main=${V}

CONFIGURE_ARGS=		--disable-aalib \
			--disable-jack \
			--disable-libcaca \
			--disable-libdv \
			--disable-oss4 \
			--disable-sunaudio \
			--disable-waveform

pre-configure:
	perl -pi -e 's,/dev/dsp,/dev/audio,g' \
		${WRKSRC}/docs/plugins/gst-plugins-good-plugins.args \
		${WRKSRC}/docs/plugins/html/gst-plugins-good-plugins-osssink.html \
		${WRKSRC}/docs/plugins/html/gst-plugins-good-plugins-osssrc.html \
		${WRKSRC}/sys/oss/gstosssink.c \
		${WRKSRC}/sys/oss/gstosssrc.c

.include <bsd.port.mk>
