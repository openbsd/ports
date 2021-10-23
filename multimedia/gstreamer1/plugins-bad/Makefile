# $OpenBSD: Makefile,v 1.84 2021/09/09 10:12:20 ajacoutot Exp $

COMMENT=		bad elements for GStreamer

DISTNAME=		gst-plugins-bad-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-bad-${V}

SHARED_LIBS += gsturidownloader-1.0      4.0 # 0.1805.0
SHARED_LIBS += gstadaptivedemux-1.0      3.0 # 0.1805.0
SHARED_LIBS += gstbadaudio-1.0           2.0 # 0.1805.0
SHARED_LIBS += gstbasecamerabinsrc-1.0   5.0 # 0.1805.0
SHARED_LIBS += gstcodecparsers-1.0       5.0 # 0.1805.0
SHARED_LIBS += gstcodecs-1.0             0.0 # 0.1805.0
SHARED_LIBS += gstinsertbin-1.0          4.0 # 0.1805.0
SHARED_LIBS += gstphotography-1.0        5.0 # 0.1805.0
SHARED_LIBS += gstisoff-1.0              2.0 # 0.1805.0
SHARED_LIBS += gstmpegts-1.0             4.0 # 0.1805.0
SHARED_LIBS += gstplayer-1.0             2.0 # 0.1805.0
SHARED_LIBS += gstsctp-1.0               2.0 # 0.1805.0
SHARED_LIBS += gsttranscoder-1.0         0.0 # 0
SHARED_LIBS += gstwebrtc-1.0             2.0 # 0.1805.0

WANTLIB += ${COMPILER_LIBCXX} SoundTouch X11 ass bs2b bz2 c cairo
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstgl-1.0 gstnet-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gstrtp-1.0 gstsdp-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 intl lcms2 m mms nettle opus
WANTLIB += orc-0.4 pango-1.0 pangocairo-1.0 rsvg-2 xml2

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

# each plugin that has an external dependency is disabled unless proven useful
DISABLED += 		opencv wayland aom androidmedia applemedia bluez
DISABLED +=		chromaprint curl curl-ssh2 dc1394 decklink directfb
DISABLED +=		dtls dts dvb faac faad fbdev fdkaac flite fluidsynth
DISABLED +=		gme gsm iqa kate ladspa libde265 lv2 modplug mpeg2enc
DISABLED +=		mplex msdk musepack neon nvdec nvenc ofa openal openexr
DISABLED +=		openh264 openjpeg openmpt openni2 opensles resindvd rtmp
DISABLED +=		sbc sctp sndfile spandsp srt srtp teletext tinyalsa
DISABLED +=		uvch264 vdpau voaacenc voamrwbenc vulkan wasapi webp
DISABLED +=		webrtc webrtcdsp wildmidi winks winscreencap wpe x265
DISABLED +=		zbar magicleap v4l2codecs va wasapi2 avtp microdns
DISABLED +=		svthevcenc zxing
.for d in ${DISABLED}
CONFIGURE_ARGS +=	-D${d}=disabled
.endfor

# XXX cannot set to 'openssl' because meson.build will fail because of
# hls_crypto_dep not deing defined (if not hls_crypto_dep.found ...)
CONFIGURE_ARGS +=	-Dhls-crypto="nettle"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
