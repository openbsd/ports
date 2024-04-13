COMMENT=		bad elements for GStreamer

DISTNAME=		gst-plugins-bad-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-bad-${V}

SHARED_LIBS += gsturidownloader-1.0      5.2 # 0.2402.0
SHARED_LIBS += gstadaptivedemux-1.0      4.2 # 0.2402.0
SHARED_LIBS += gstbadaudio-1.0           3.2 # 0.2402.0
SHARED_LIBS += gstanalytics-1.0          0.0 # 0.2401.0
SHARED_LIBS += gstbasecamerabinsrc-1.0   6.2 # 0.2402.0
SHARED_LIBS += gstcodecparsers-1.0       6.2 # 0.2402.0
SHARED_LIBS += gstcodecs-1.0             1.2 # 0.2402.0
SHARED_LIBS += gstdxva-1.0               0.0 # 0.2401.0
SHARED_LIBS += gstinsertbin-1.0          5.2 # 0.2402.0
SHARED_LIBS += gstmse-1.0                0.0 # 0.2401.0
SHARED_LIBS += gstphotography-1.0        6.2 # 0.2402.0
SHARED_LIBS += gstisoff-1.0              3.2 # 0.2402.0
SHARED_LIBS += gstmpegts-1.0             5.2 # 0.2402.0
SHARED_LIBS += gstplay-1.0               0.2 # 0.2402.0
SHARED_LIBS += gstplayer-1.0             3.2 # 0.2402.0
SHARED_LIBS += gstsctp-1.0               3.2 # 0.2402.0
SHARED_LIBS += gsttranscoder-1.0         1.2 # 0
SHARED_LIBS += gstwayland-1.0            0.1 # 0.2402.0
SHARED_LIBS += gstwebrtc-1.0             3.2 # 0.2402.0

COMPILER_LANGS = c c++

WANTLIB += ${COMPILER_LIBCXX} SoundTouch X11 ass bs2b bz2 c cairo
WANTLIB += crypto gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gstallocators-1.0
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstnet-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gstrtp-1.0 gstsdp-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 intl json-glib-1.0 lcms2 m
WANTLIB += nettle opus orc-0.4 pango-1.0 pangocairo-1.0 rsvg-2
WANTLIB += wayland-client xml2

SITES =			${SITE_GST:=gst-plugins-bad/}

BUILD_DEPENDS=		devel/gobject-introspection \
			wayland/wayland-protocols

# needed for ${WRKSRC}/tests/
BUILD_DEPENDS +=	graphics/libexif

LIB_DEPENDS=		${P}/plugins-base=${V} \
			audio/libbs2b \
			audio/opus \
			audio/soundtouch \
			devel/json-glib \
			graphics/lcms2 \
			multimedia/libass \
			security/libnettle \
			x11/gnome/librsvg

# each plugin that has an external dependency is disabled unless proven useful
DISABLED += 		opencv aom androidmedia applemedia bluez ldac aja lc3
DISABLED +=		chromaprint curl curl-ssh2 dc1394 decklink directfb
DISABLED +=		dtls dts dvb faac faad fbdev fdkaac flite fluidsynth
DISABLED +=		gme gsm iqa ladspa libde265 lv2 modplug mpeg2enc udev
DISABLED +=		mplex msdk musepack neon openal openexr gs isac onnx
DISABLED +=		openh264 openjpeg openmpt openni2 opensles resindvd rtmp
DISABLED +=		sbc sctp sndfile spandsp srt srtp teletext tinyalsa
DISABLED +=		uvch264 voaacenc voamrwbenc vulkan wasapi webp openaptx
DISABLED +=		webrtc webrtcdsp wildmidi winks winscreencap wpe x265
DISABLED +=		zbar magicleap v4l2codecs va wasapi2 avtp microdns
DISABLED +=		svthevcenc zxing qroverlay timecode amfcodec directshow
DISABLED +=		nvcodec qsv gtk3 dvbsuboverlay siren uvcgadget qt6d3d11
DISABLED +=		svtav1

.for d in ${DISABLED}
CONFIGURE_ARGS +=	-D${d}=disabled
.endfor

# XXX cannot set to 'openssl' because meson.build will fail because of
# hls_crypto_dep not deing defined (if not hls_crypto_dep.found ...)
CONFIGURE_ARGS +=	-Dhls-crypto="nettle"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
