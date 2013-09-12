# $OpenBSD: Makefile,v 1.18 2013/09/12 12:00:20 ajacoutot Exp $

COMMENT=		bad elements for GStreamer

DISTNAME=		gst-plugins-bad-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-bad-${V}

SHARED_LIBS +=  gstphotography-1.0      0.0      # 9.0
SHARED_LIBS +=  gstsignalprocessor-1.0  0.0      # 9.0
SHARED_LIBS +=  gstbasevideo-1.0        0.0      # 9.0
SHARED_LIBS +=  gstbasecamerabinsrc-1.0 0.0      # 9.0
SHARED_LIBS +=  gstcodecparsers-1.0     0.0      # 9.0

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-bad/}

WANTLIB += BPM SoundTouch ass bz2 enca expat ffi fontconfig freetype
WANTLIB += fribidi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gstrtp-1.0 gstsdp-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 m mms opus orc-0.4 pcre pthread schroedinger-1.0
WANTLIB += stdc++ z pthread-stubs X11 xcb

MODULES =		devel/dconf

# needed for ${WRKSRC}/tests/
BUILD_DEPENDS +=	graphics/libexif

LIB_DEPENDS=		${P}/plugins-base \
			audio/opus \
			audio/soundtouch \
			multimedia/libass \
			multimedia/libmms \
			multimedia/schroedinger

# each plugin that has an external dependency is disabled unless proved useful
CONFIGURE_ARGS=		--disable-cdaudio \
			--disable-celt \
			--disable-curl \
			--disable-chromaprint \
			--disable-decklink \
			--disable-dirac \
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
			--disable-swfdec \
			--disable-teletextdec \
			--disable-timidity \
			--disable-vcd \
			--disable-vdpau \
			--disable-voaacenc \
			--disable-voamrwbenc \
			--disable-wildmidi \
			--disable-xvid \
			--disable-zbar

# sndio(7) support has been patched into plugins-base:
# we do not want to depends on plugins-bad for audio
CONFIGURE_ARGS +=	--disable-sndio

# this add some build dependencies (e.g. gtk+2, gtk+3) for no real use
CONFIGURE_ARGS +=	--disable-examples

pre-configure:
	perl -pi -e 's,/dev/dvd,/dev/rcd0c,g' \
		${WRKSRC}/ext/resindvd/resindvdbin.c \
		${WRKSRC}/ext/resindvd/resindvdsrc.c
	perl -pi -e 's,/dev/cdrom,/dev/rcd0c,g' \
		${WRKSRC}/ext/cdaudio/gstcdaudio.c \
		${WRKSRC}/sys/vcd/vcdsrc.c

.include <bsd.port.mk>
