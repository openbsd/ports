# $OpenBSD: Makefile,v 1.27 2014/04/01 16:31:40 ajacoutot Exp $

COMMENT=		bad elements for GStreamer

DISTNAME=		gst-plugins-bad-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-bad-${V}
REVISION=		0

SHARED_LIBS +=  gstphotography-1.0      1.0    # 202.0
SHARED_LIBS +=  gstbasecamerabinsrc-1.0 1.0    # 202.0
SHARED_LIBS +=  gstcodecparsers-1.0     1.0    # 202.0
SHARED_LIBS +=  gstinsertbin-1.0        0.0    # 202.0
SHARED_LIBS +=  gsturidownloader-1.0    0.0    # 202.0
SHARED_LIBS +=  gstmpegts-1.0           0.0    # 202.0
SHARED_LIBS +=  gstegl-1.0              0.0    # 202.0

WANTLIB += BPM EGL GLESv2 SoundTouch X11 X11-xcb Xau Xdmcp Xext
WANTLIB += Xrender ass bz2 cairo croco-0.6 drm enca expat ffi
WANTLIB += fontconfig freetype fribidi gdk_pixbuf-2.0 gio-2.0
WANTLIB += glapi glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gstrtp-1.0 gstsdp-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 harfbuzz hogweed m mms nettle opus orc-0.4
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs rsvg-2 schroedinger-1.0
WANTLIB += stdc++ tasn1 xcb xcb-dri2 xcb-render xcb-shape xcb-shm
WANTLIB += xcb-xfixes xml2 z

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-bad/}

MODULES =		devel/dconf

# needed for ${WRKSRC}/tests/
BUILD_DEPENDS +=	graphics/libexif

LIB_DEPENDS=		${P}/plugins-base=${V} \
			audio/opus \
			audio/soundtouch \
			multimedia/libass \
			multimedia/libmms \
			multimedia/schroedinger

# each plugin that has an external dependency is disabled unless proved useful
CONFIGURE_ARGS=		--disable-cdaudio \
			--disable-curl \
			--disable-chromaprint \
			--disable-decklink \
			--disable-dts \
			--disable-faac \
			--disable-faad \
			--disable-flite \
			--disable-fluidsynth \
			--disable-gme \
			--disable-gsm \
			--disable-kate \
			--disable-ladspa \
			--disable-lv2 \
			--disable-mimic \
			--disable-modplug \
			--disable-mpeg2enc \
			--disable-mpg123 \
			--disable-mplex \
			--disable-musepack \
			--disable-mythtv \
			--disable-nas \
			--disable-neon \
			--disable-ofa \
			--disable-openal \
			--disable-opencv \
			--disable-openjpeg \
			--disable-pvr \
			--disable-resindvd \
			--disable-rtmp \
			--disable-sndfile \
			--disable-spandsp \
			--disable-spc \
			--disable-srtp \
			--disable-teletextdec \
			--disable-timidity \
			--disable-vcd \
			--disable-vdpau \
			--disable-voaacenc \
			--disable-voamrwbenc \
			--disable-webp \
			--disable-wildmidi \
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
	perl -pi -e 's,/dev/dvd,/dev/rcd0c,g' \
		${WRKSRC}/ext/resindvd/resindvdbin.c \
		${WRKSRC}/ext/resindvd/resindvdsrc.c
	perl -pi -e 's,/dev/cdrom,/dev/rcd0c,g' \
		${WRKSRC}/ext/cdaudio/gstcdaudio.c \
		${WRKSRC}/sys/vcd/vcdsrc.c

.include <bsd.port.mk>
