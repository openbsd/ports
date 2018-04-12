# $OpenBSD: Makefile,v 1.58 2018/04/12 11:42:33 ajacoutot Exp $

# XXX ossaudio(3) is only enabled to be used as a mixing device by
# x11/xfce4/xfce4-mixer

COMMENT-main=		good elements for GStreamer
COMMENT-pulse=		pulseaudio(1) element for GStreamer

DISTNAME=		gst-plugins-good-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-good-${V}

PKGNAME-main=		${PKGNAME}
PKGNAME-pulse=		${GST_PKGNAME_PREFIX}-plugins-pulse-${V}

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-good/}

WANTLIB += ffi glib-2.0 gmodule-2.0 gobject-2.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += m orc-0.4 pcre pthread z X11 Xext xcb iconv intl execinfo

WANTLIB-main +=	${WANTLIB}
WANTLIB-main += EGL FLAC GL GLESv2 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB-main += Xfixes Xi Xinerama Xrandr Xrender Xtst Xxf86vm atk-1.0
WANTLIB-main += atk-bridge-2.0 atspi bz2 cairo cairo-gobject dbus-1
WANTLIB-main += drm epoxy expat fontconfig freetype gbm gdk-3 gdk_pixbuf-2.0
WANTLIB-main += gio-2.0 glapi graphite2 gstallocators-1.0 gstcontroller-1.0
WANTLIB-main += gstfft-1.0 gstgl-1.0 gstnet-1.0 gstriff-1.0 gstrtp-1.0
WANTLIB-main += gstrtsp-1.0 gstsdp-1.0 gthread-2.0 gtk-3 harfbuzz jpeg
WANTLIB-main += lzma mpg123 ogg ossaudio pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-main += pixman-1 png shout soup-2.4 speex sqlite3 tag theora
WANTLIB-main += twolame v4l2 v4lconvert vorbis vpx wavpack xcb-dri2
WANTLIB-main += xcb-glx xcb-render xcb-shm xcb-xfixes xml2

# comes from multimedia/libvpx using lang/clang MODULE on i386|amd64 only
# which includes gcc4 MODULE with adds gcc-libs in dependency scope
.if ${MACHINE_ARCH:Mi386} || ${MACHINE_ARCH:Mamd64}
WANTLIB-main += $(LIBECXX)
.endif

WANTLIB-pulse += ${WANTLIB}
WANTLIB-pulse += pulse sndfile X11-xcb Xi Xtst ICE FLAC ogg
WANTLIB-pulse += vorbis vorbisenc dbus-1 SM

MULTI_PACKAGES=		-main -pulse

LIB_DEPENDS=		${P}/plugins-base=${V}

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			archivers/bzip2 \
			audio/flac \
			audio/mpg123 \
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

CONFIGURE_ARGS=		--disable-aalib \
			--disable-directsound \
			--disable-jack \
			--disable-lame \
			--disable-libcaca \
			--disable-libdv \
			--disable-oss4 \
			--disable-osx_audio \
			--disable-osx_video \
			--disable-qt \
			--disable-waveform \
			--disable-dv1394

pre-configure:
	sed -i 's,/dev/dsp,/dev/audio,g' \
		${WRKSRC}/docs/plugins/gst-plugins-good-plugins.args \
		${WRKSRC}/docs/plugins/html/gst-plugins-good-plugins-osssink.html \
		${WRKSRC}/docs/plugins/html/gst-plugins-good-plugins-osssrc.html \
		${WRKSRC}/sys/oss/gstosssink.c \
		${WRKSRC}/sys/oss/gstosssrc.c

.include <bsd.port.mk>
