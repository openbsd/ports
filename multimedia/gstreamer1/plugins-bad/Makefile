# $OpenBSD: Makefile,v 1.72 2018/09/17 08:46:09 ajacoutot Exp $

COMMENT=		bad elements for GStreamer

DISTNAME=		gst-plugins-bad-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-bad-${V}

SHARED_LIBS +=  gstphotography-1.0   3.3      # 1403.0
SHARED_LIBS +=  gstbasecamerabinsrc-1.0 3.3   # 1403.0
SHARED_LIBS +=  gstcodecparsers-1.0  3.3      # 1403.0
SHARED_LIBS +=  gstinsertbin-1.0     2.3      # 1403.0
SHARED_LIBS +=  gsturidownloader-1.0 2.3      # 1403.0
SHARED_LIBS +=  gstmpegts-1.0        2.3      # 1403.0
SHARED_LIBS +=  gstplayer-1.0        0.3      # 1403.0
SHARED_LIBS +=  gstadaptivedemux-1.0 1.3      # 1403.0
SHARED_LIBS +=  gstbadvideo-1.0      2.3      # 1403.0
SHARED_LIBS +=  gstbadaudio-1.0      0.3      # 1403.0
SHARED_LIBS +=  gstisoff-1.0         0.0      # 1403.0
SHARED_LIBS +=  gstwebrtc-1.0        0.0      # 1403.0

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLESv2 SoundTouch X11 X11-xcb
WANTLIB += Xdamage Xext Xfixes Xrender Xxf86vm ass bs2b bz2 cairo
WANTLIB += croco-0.6 crypto drm expat ffi fontconfig freetype
WANTLIB += fribidi gbm gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gstallocators-1.0 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstcontroller-1.0 gstfft-1.0
WANTLIB += gstgl-1.0 gstnet-1.0 gstpbutils-1.0 gstreamer-1.0 gstrtp-1.0
WANTLIB += gstsdp-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 harfbuzz
WANTLIB += iconv intl lcms2 lzma m mms opus orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png rsvg-2
WANTLIB += ssl xcb xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes
WANTLIB += xcb-dri3 xcb-present xcb-sync xshmfence
WANTLIB += xml2 z

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-bad/}

BUILD_DEPENDS=		devel/gobject-introspection

# needed for ${WRKSRC}/tests/
BUILD_DEPENDS +=	graphics/libexif

LIB_DEPENDS=		${P}/plugins-base=${V} \
			audio/libbs2b \
			audio/opus \
			audio/soundtouch \
			graphics/lcms2 \
			multimedia/libass \
			multimedia/libmms

CONFIGURE_ARGS=		--with-gtk=3.0 \
			--with-hls-crypto=openssl

# each plugin that has an external dependency is disabled unless proved useful
# gtksink is needed by the corebird package
CONFIGURE_ARGS +=	--disable-acm \
			--disable-android_media \
			--disable-aom \
			--disable-apple_media \
			--disable-avc \
			--disable-bluez \
			--disable-chromaprint \
			--disable-curl \
			--disable-daala \
			--disable-dc1394 \
			--disable-decklink \
			--disable-direct3d \
			--disable-directfb \
			--disable-directsound \
			--disable-dtls \
			--disable-dts \
			--disable-dvb \
			--disable-faac \
			--disable-faad \
			--disable-fbdev \
			--disable-fdk_aac \
			--disable-flite \
			--disable-fluidsynth \
			--disable-gme \
			--disable-gsm \
			--disable-iqa \
			--disable-kate \
			--disable-ladspa \
			--disable-libde265 \
			--disable-lv2 \
			--disable-modplug \
			--disable-mpeg2enc \
			--disable-mplex \
			--disable-msdk \
			--disable-musepack \
			--disable-neon \
			--disable-nvdec \
			--disable-nvenc \
			--disable-ofa \
			--disable-openal \
			--disable-opencv \
			--disable-openexr \
			--disable-openh264 \
			--disable-openjpeg \
			--disable-openmpt \
			--disable-openni2 \
			--disable-opensles \
			--disable-resindvd \
			--disable-rtmp \
			--disable-sbc \
			--disable-sndfile \
			--disable-spandsp \
			--disable-spc \
			--disable-srt \
			--disable-srtp \
			--disable-teletextdec \
			--disable-tinyalsa \
			--disable-uvch264 \
			--disable-vcd \
			--disable-vdpau \
			--disable-voaacenc \
			--disable-voamrwbenc \
			--disable-vulkan \
			--disable-wasapi \
			--disable-wayland \
			--disable-webp \
			--disable-webrtc \
			--disable-webrtcdsp \
			--disable-wildmidi \
			--disable-winks \
			--disable-winscreencap \
			--disable-x265 \
			--disable-zbar

# XXX needed by g-ir-scanner(1)
CFLAGS +=		-I${X11BASE}/include

pre-configure:
# https://bugzilla.gnome.org/show_bug.cgi?id=726571
# XXX check if still needed at next release
	sed -i 's,--libtool="\$$(top_builddir)/libtool",--libtool="\$${LIBTOOL}",g' \
		${WRKSRC}/gst-libs/gst/*/Makefile.in

	sed -i 's,/dev/dvd,/dev/rcd0c,g' \
		${WRKSRC}/ext/resindvd/resindvdbin.c \
		${WRKSRC}/ext/resindvd/resindvdsrc.c
	sed -i 's,/dev/cdrom,/dev/rcd0c,g' \
		${WRKSRC}/sys/vcd/vcdsrc.c

.include <bsd.port.mk>
