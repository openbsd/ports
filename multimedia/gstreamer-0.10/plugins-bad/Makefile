# $OpenBSD: Makefile,v 1.22 2009/11/29 09:16:51 ajacoutot Exp $

COMMENT-main =		bad elements for GStreamer
COMMENT-neon =		neon element for GStreamer (bad)
COMMENT-real =		real element for GStreamer (bad)
COMMENT-mjpeg =		gstmplex and gstmpeg2enc elements for GStreamer (bad)

V =			0.10.17
DISTNAME =		gst-plugins-bad-$V

PKGNAME-main =		gstreamer-plugins-bad-${V}
PKGNAME-neon =		gstreamer-neon-$V
PKGNAME-real =		gstreamer-real-$V
PKGNAME-mjpeg =		gstreamer-mjpeg-$V

MULTI_PACKAGES =	-main -neon -mjpeg

SHARED_LIBS +=  gstphotography-0.10          0.0 # .0.0
SHARED_LIBS +=  gstsignalprocessor-0.10      0.0 # .0.0
SHARED_LIBS +=  gstbasevideo-0.10            0.0 # .0.0

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-bad/}
MODULES =		devel/gettext

WANTLIB =		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 xml2 \
			z m pcre

.for i in ${MULTI_PACKAGES}
REGRESS_DEPENDS +=	::${BASE_PKGPATH},${i}
.endfor

LIB_DEPENDS =		gstreamer-0.10:gstreamer->=0.10:$P/core
RUN_DEPENDS =		::${BUILD_PKGPATH}
BUILD_DEPENDS +=        ::audio/ladspa

WANTLIB-main =		${WANTLIB} \
			X11 Xau Xdmcp Xext Xrandr Xrender bz2 pthread-stubs \
			sndio usbhid xcb gstbase-0.10 gstcontroller-0.10 \
			Xcomposite Xcursor Xdamage Xfixes Xi Xinerama atk-1.0 \
			c cairo croco-0.6 crypto expat fontconfig freetype \
			gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glitz gsf-1 \
			gtk-x11-2.0 oil-0.3 pango-1.0 pangocairo-1.0 \
			pangoft2-1.0 pixman-1 png pthread ssl
LIB_DEPENDS-main = 	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10,gstvideo-0.10,gstriff-0.10,gstpbutils-0.10,gstrtp-0.10,gstsdp-0.10,gsttag-0.10::$P/plugins-base \
			vorbisidec.>=2::audio/tremor \
			sndfile.>=3::audio/libsndfile \
			mpcdec.>=3::audio/libmpcdec \
			faac.>=1::audio/faac \
			faad.>=2::audio/faad \
			exif.>=12::graphics/libexif \
			xvidcore.>=4::multimedia/xvidcore \
			SDL.>=8::devel/sdl \
			mms::multimedia/libmms \
			gsm::audio/gsm \
			rsvg-2.>=28::x11/gnome/librsvg \
			schroedinger-1.0::multimedia/schroedinger \
			glade-2.0.>=1::devel/libglade2 \
			cdaudio.>=1::audio/libcdaudio \
			BPM,SoundTouch::audio/soundtouch \
			dvdnav.>=6,dvdread::multimedia/libdvdnav

RUN_DEPENDS-main =	${MODGETTEXT_RUN_DEPENDS}

WANTLIB-neon =		${WANTLIB} \
			gstbase-0.10 \
			crypto expat ssl asn1 gssapi krb5
LIB_DEPENDS-neon =	${LIB_DEPENDS} \
			neon::net/neon

.if ${MACHINE_ARCH} == i386 || ${MACHINE_ARCH} == amd64
MULTI_PACKAGES +=	-real
WANTLIB-real =		${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-real =	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10::$P/plugins-base
.endif

WANTLIB-mjpeg =		${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-mjpeg =	${LIB_DEPENDS} \
			mjpegutils.>=4,mplex2.>=5,mpeg2encpp.>=5::multimedia/mjpegtools

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
			--disable-dts \
			--disable-dvb \
			--disable-fbdev \
			--disable-jack \
			--disable-gme \
			--disable-alsa \
			--disable-jp2k \
			--disable-kate \
			--disable-lv2 \
			--disable-mimic \
			--disable-modplug \
			--disable-mythtv \
			--disable-ofa \
			--disable-nas \
			--disable-oss4 \
			--disable-osx_video \
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
