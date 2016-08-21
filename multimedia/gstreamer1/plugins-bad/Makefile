# $OpenBSD: Makefile,v 1.48 2016/08/21 16:55:11 ajacoutot Exp $

COMMENT=		bad elements for GStreamer

DISTNAME=		gst-plugins-bad-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-bad-${V}

SHARED_LIBS +=  gstphotography-1.0   3.0      # 803.0
SHARED_LIBS +=  gstbasecamerabinsrc-1.0 3.0      # 803.0
SHARED_LIBS +=  gstcodecparsers-1.0  3.0      # 803.0
SHARED_LIBS +=  gstinsertbin-1.0     2.0      # 803.0
SHARED_LIBS +=  gsturidownloader-1.0 2.0      # 803.0
SHARED_LIBS +=  gstmpegts-1.0        2.0      # 803.0
SHARED_LIBS +=  gstbadbase-1.0       2.0      # 803.0
SHARED_LIBS +=  gstplayer-1.0        0.0      # 803.0
SHARED_LIBS +=  gstgl-1.0            2.0      # 803.0
SHARED_LIBS +=  gstadaptivedemux-1.0 1.0      # 803.0
SHARED_LIBS +=  gstbadvideo-1.0      2.0      # 803.0
SHARED_LIBS +=  gstbadaudio-1.0      0.0      # 803.0

WANTLIB += EGL GL GLESv2 ICE SM SoundTouch X11 X11-xcb Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xxf86vm ass atk-1.0 atk-bridge-2.0 atspi bs2b bz2 cairo
WANTLIB += cairo-gobject croco-0.6 dbus-1 drm epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gbm gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstnet-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gstrtp-1.0 gstsdp-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz crypto
WANTLIB += jpeg lzma m mms opus orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs ssl
WANTLIB += rsvg-2 stdc++ xcb xcb-dri2 xcb-glx xcb-render xcb-shape
WANTLIB += xcb-shm xcb-xfixes xml2 z gstallocators-1.0 iconv intl

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-bad/}

BUILD_DEPENDS=		devel/gobject-introspection

# needed for ${WRKSRC}/tests/
BUILD_DEPENDS +=	graphics/libexif

LIB_DEPENDS=		${P}/plugins-base=${V} \
			audio/libbs2b \
			audio/opus \
			audio/soundtouch \
			multimedia/libass \
			multimedia/libmms

CONFIGURE_ARGS=		--with-gtk=3.0 \
			--with-hls-crypto=openssl

# each plugin that has an external dependency is disabled unless proved useful
# gtksink is needed by the corebird package
CONFIGURE_ARGS +=	--disable-acm \
			--disable-android_media \
			--disable-apexsink \
			--disable-apple_media \
			--disable-avc \
			--disable-bluez \
			--disable-chromaprint \
			--disable-cocoa \
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
			--disable-dvbsuboverlay \
			--disable-faac \
			--disable-faad \
			--disable-fbdev \
			--disable-flite \
			--disable-fluidsynth \
			--disable-gme \
			--disable-gsm \
			--disable-kate \
			--disable-ladspa \
			--disable-libde265 \
			--disable-libvisual \
			--disable-linsys \
			--disable-lv2 \
			--disable-mimic \
			--disable-modplug \
			--disable-mpeg2enc \
			--disable-mplex \
			--disable-musepack \
			--disable-nas \
			--disable-neon \
			--disable-nvenc \
			--disable-ofa \
			--disable-openal \
			--disable-opencv \
			--disable-openexr \
			--disable-openh264 \
			--disable-openjpeg \
			--disable-openni2 \
			--disable-opensles \
			--disable-pvr \
			--disable-qt \
			--disable-resindvd \
			--disable-rtmp \
			--disable-sbc \
			--disable-schro \
			--disable-sdl \
			--disable-sndfile \
			--disable-spandsp \
			--disable-spc \
			--disable-srtp \
			--disable-teletextdec \
			--disable-timidity \
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
			--disable-wildmidi \
			--disable-wininet \
			--disable-winks \
			--disable-winscreencap \
			--disable-x265 \
			--disable-xvid \
			--disable-zbar

# sndio(7) support has been patched into plugins-base:
# we do not want to depends on plugins-bad for audio
CONFIGURE_ARGS +=	--disable-sndio

# this add some build dependencies (e.g. gtk+2, gtk+3) for no real use
CONFIGURE_ARGS +=	--disable-examples

# XXX needed by g-ir-scanner(1)
CFLAGS +=		-I${X11BASE}/include

pre-configure:
# https://bugzilla.gnome.org/show_bug.cgi?id=726571
# XXX check if still needed at next release
	sed -i 's,--libtool="\$$\(top_builddir\)/libtool",--libtool="\$${LIBTOOL}",g' \
		${WRKSRC}/*/Makefile.in

	sed -i 's,/dev/dvd,/dev/rcd0c,g' \
		${WRKSRC}/ext/resindvd/resindvdbin.c \
		${WRKSRC}/ext/resindvd/resindvdsrc.c
	sed -i 's,/dev/cdrom,/dev/rcd0c,g' \
		${WRKSRC}/sys/vcd/vcdsrc.c

.include <bsd.port.mk>
