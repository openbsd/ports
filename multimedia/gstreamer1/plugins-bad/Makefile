# $OpenBSD: Makefile,v 1.36 2015/04/14 08:36:09 bentley Exp $

COMMENT=		bad elements for GStreamer

DISTNAME=		gst-plugins-bad-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-plugins-bad-${V}
REVISION=		1

SHARED_LIBS +=  gstphotography-1.0   1.0      # 405.0
SHARED_LIBS +=  gstbasecamerabinsrc-1.0 1.0      # 405.0
SHARED_LIBS +=  gstcodecparsers-1.0  1.0      # 405.0
SHARED_LIBS +=  gstinsertbin-1.0     0.0      # 405.0
SHARED_LIBS +=  gsturidownloader-1.0 0.0      # 405.0
SHARED_LIBS +=  gstmpegts-1.0        0.0      # 405.0
SHARED_LIBS +=  gstbadbase-1.0       0.0      # 405.0
SHARED_LIBS +=  gstbadvideo-1.0      0.0      # 405.0
SHARED_LIBS +=  gstgl-1.0            0.0      # 405.0

WANTLIB += EGL GL GLU ICE SM SoundTouch X11 X11-xcb Xau Xdamage
WANTLIB += Xdmcp Xext Xfixes Xrender Xxf86vm ass bz2 cairo croco-0.6
WANTLIB += drm enca expat ffi fontconfig freetype fribidi gbm
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gstrtp-1.0 gstsdp-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 harfbuzz jpeg lzma m
WANTLIB += mms nettle opus orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rsvg-2 schroedinger-1.0
WANTLIB += stdc++ xcb xcb-dri2 xcb-glx xcb-render xcb-shape xcb-shm
WANTLIB += xcb-xfixes xml2 z

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-bad/}

MODULES =		devel/dconf

BUILD_DEPENDS=		devel/gobject-introspection

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
			--disable-cocoa \
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
			--disable-openexr \
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
# https://bugzilla.gnome.org/show_bug.cgi?id=726571
# XXX check if still needed at next release
.for i in mpegts insertbin egl
	perl -pi -e 's,--libtool="\$$\(top_builddir\)/libtool",--libtool="\$${LIBTOOL}",g' \
		${WRKSRC}/$i/Makefile.in
.endfor

	perl -pi -e 's,/dev/dvd,/dev/rcd0c,g' \
		${WRKSRC}/ext/resindvd/resindvdbin.c \
		${WRKSRC}/ext/resindvd/resindvdsrc.c
	perl -pi -e 's,/dev/cdrom,/dev/rcd0c,g' \
		${WRKSRC}/ext/cdaudio/gstcdaudio.c \
		${WRKSRC}/sys/vcd/vcdsrc.c

.include <bsd.port.mk>
