# $OpenBSD: Makefile,v 1.12 2013/01/01 14:23:25 ajacoutot Exp $

# XXX ossaudio(3) is only enabled to be used as a mixing device by
# audio/pulseaudio and x11/xfce4/xfce4-mixer

COMMENT-main=		good elements for GStreamer
COMMENT-pulse=		pulseaudio(1) element for GStreamer

V=			1.0.3
DISTNAME=		gst-plugins-good-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-good-${V}

PKGNAME-main=		${PKGNAME}
PKGNAME-pulse=		${GST_PKGNAME_PREFIX}-plugins-pulse-${V}

REVISION-pulse=		0

WANTLIB += ffi glib-2.0 gmodule-2.0 gobject-2.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 m orc-0.4 pcre pthread z

WANTLIB-main +=	${WANTLIB}
WANTLIB-main += FLAC ICE SM X11 Xdamage Xext Xfixes Xv bz2 dbus-1 gcrypt
WANTLIB-main += gdk_pixbuf-2.0 gio-2.0 gnome-keyring gpg-error gstcontroller-1.0
WANTLIB-main += gstfft-1.0 gstnet-1.0 gstriff-1.0 gstrtp-1.0 gstrtsp-1.0
WANTLIB-main += gstsdp-1.0 jpeg ogg ossaudio png shout soup-2.4 soup-gnome-2.4
WANTLIB-main += speex sqlite3 stdc++ tag theora vorbis vpx wavpack xcb
WANTLIB-main += xml2

WANTLIB-pulse += ${WANTLIB}
WANTLIB-pulse += execinfo gdbm json pulse sndfile

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-good/}

MULTI_PACKAGES=		-main -pulse

LIB_DEPENDS=		${P}/plugins-base

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			archivers/bzip2 \
			audio/flac \
			audio/speex \
			audio/taglib \
			audio/wavpack \
			devel/libsoup,-gnome \
			graphics/gdk-pixbuf2 \
			multimedia/libvpx \
			net/libshout

LIB_DEPENDS-pulse=	${LIB_DEPENDS} \
			audio/pulseaudio>=2.1
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
