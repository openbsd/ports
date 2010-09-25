# $OpenBSD: Makefile,v 1.39 2010/09/25 13:34:57 steven Exp $

COMMENT-main =		bad elements for GStreamer
COMMENT-neon =		neon element for GStreamer (plugins-bad)
COMMENT-mjpeg =		mplex+mpeg2enc elements for GStreamer (plugins-bad)

V =			0.10.20
DISTNAME =		gst-plugins-bad-${V}

PKGNAME-main =		gstreamer-plugins-bad-${V}
PKGNAME-neon =		gstreamer-neon-${V}
PKGNAME-mjpeg =		gstreamer-mjpeg-${V}

MULTI_PACKAGES =	-main -neon -mjpeg

SHARED_LIBS +=  gstphotography-0.10          0.0 # .0.0
SHARED_LIBS +=  gstsignalprocessor-0.10      0.0 # .0.0
SHARED_LIBS +=  gstbasevideo-0.10            0.0 # .0.0

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-bad/}
MODULES =		devel/gettext

WANTLIB =		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 xml2 \
			z m pcre gstreamer-0.10

.for i in ${MULTI_PACKAGES}
REGRESS_DEPENDS +=	::${BASE_PKGPATH},${i}
.endfor

LIB_DEPENDS =		:gstreamer->=0.10:${P}/core
RUN_DEPENDS =		::${BUILD_PKGPATH}
BUILD_DEPENDS +=        ::audio/ladspa

WANTLIB-main =		${WANTLIB} xcb-render xcb-render-util \
			X11 Xau Xdmcp Xrender bz2 pthread-stubs \
			sndio usbhid xcb gstbase-0.10 gstcontroller-0.10 \
			cairo croco-0.6 expat fontconfig freetype stdc++ \
			gdk_pixbuf-2.0 gio-2.0 glitz gsf-1 gstinterfaces-0.10 \
			orc-0.4 pango-1.0 pangocairo-1.0 gstaudio-0.10 \
			pangoft2-1.0 pixman-1 png pthread dvdread gstvideo-0.10 \
			gstriff-0.10 gstpbutils-0.10 gstrtp-0.10 gstsdp-0.10 \
			gsttag-0.10 sndfile mpcdec faac faad dca exif xvidcore \
			SDL mms gsm rsvg-2 schroedinger-1.0 cdaudio BPM \
			SoundTouch dvdnav jasper
LIB_DEPENDS-main = 	${LIB_DEPENDS} \
			::${P}/plugins-base \
			::audio/faac \
			::audio/faad \
			::audio/gsm \
			::audio/libcdaudio \
			::audio/libdca \
			::audio/libmpcdec \
			::audio/libsndfile \
			::audio/soundtouch \
			::devel/sdl \
			::graphics/jasper \
			::graphics/libexif \
			::multimedia/libmms \
			::multimedia/schroedinger \
			::multimedia/xvidcore \
			::x11/gnome/librsvg \
			:libdvdnav->=4.1.3p0v0:multimedia/libdvdnav

RUN_DEPENDS-main =	${MODGETTEXT_RUN_DEPENDS}

WANTLIB-neon =		${WANTLIB} \
			gstbase-0.10 neon \
			crypto expat ssl asn1 gssapi krb5
LIB_DEPENDS-neon =	${LIB_DEPENDS} \
			::net/neon

WANTLIB-mjpeg =		${WANTLIB} \
			gstbase-0.10 mjpegutils mplex2 mpeg2encpp stdc++
LIB_DEPENDS-mjpeg =	${LIB_DEPENDS} \
			::multimedia/mjpegtools

CONFIGURE_ENV =		ac_cv_path_PYTHON=""
CONFIGURE_ARGS =	--disable-acm \
			--disable-amrwb \
			--disable-celt \
			--disable-dc1394 \
			--disable-cog \
			--disable-directfb \
			--disable-dirac \
			--disable-directdraw \
			--disable-directsound \
			--disable-divx \
			--disable-dvb \
			--disable-fbdev \
			--disable-jack \
			--disable-gme \
			--disable-alsa \
			--disable-kate \
			--disable-lv2 \
			--disable-mimic \
			--disable-modplug \
			--disable-mythtv \
			--disable-ofa \
			--disable-nas \
			--disable-osx_video \
			--disable-real \
			--disable-spc \
			--disable-vdpau \
			--disable-wildmidi \
			--disable-wininet \
			--disable-vcd \
			--disable-dvdspu \
			--disable-quicktime \
			--disable-musicbrainz \
			--disable-zbar

# XXX subpackage?
CONFIGURE_ARGS +=	--disable-timidity \
			--disable-swfdec

.include <bsd.port.mk>
