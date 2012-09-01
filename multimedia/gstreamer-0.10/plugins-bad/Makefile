# $OpenBSD: Makefile,v 1.69 2012/09/01 14:36:57 ajacoutot Exp $

COMMENT-main =		bad elements for GStreamer
COMMENT-neon =		neon element for GStreamer (plugins-bad)
COMMENT-mjpeg =		mplex+mpeg2enc elements for GStreamer (plugins-bad)

V =			0.10.23
DISTNAME =		gst-plugins-bad-${V}

PKGNAME-main =		gstreamer-plugins-bad-${V}
PKGNAME-neon =		gstreamer-neon-${V}
PKGNAME-mjpeg =		gstreamer-mjpeg-${V}

REVISION-main =		3
REVISION-mjpeg =	2
REVISION-neon =		1

MULTI_PACKAGES =	-main -neon -mjpeg

SHARED_LIBS +=  gstphotography-0.10       1.0 # 23.0
SHARED_LIBS +=  gstsignalprocessor-0.10   1.0 # 23.0
SHARED_LIBS +=  gstbasevideo-0.10         1.0 # 23.0
SHARED_LIBS +=  gstbasecamerabinsrc-0.10  0.0 # 23.0
SHARED_LIBS +=  gstcodecparsers-0.10      0.0 # 23.0

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-bad/}
MODULES =		devel/gettext \
			devel/dconf

WANTLIB =		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 xml2 \
			z m pcre gstreamer-0.10 gstbase-0.10 ffi

.for i in ${MULTI_PACKAGES}
REGRESS_DEPENDS +=	${BASE_PKGPATH},${i}
.endfor

LIB_DEPENDS =		${P}/core>=0.10
RUN_DEPENDS =		${BUILD_PKGPATH}
BUILD_DEPENDS +=        audio/ladspa \
			graphics/libexif

WANTLIB-main += ${WANTLIB}
WANTLIB-main += BPM GL SDL SoundTouch X11 Xau Xdamage Xdmcp Xext Xfixes
WANTLIB-main += Xrender Xxf86vm ass bz2 cairo cdaudio croco-0.6 crypto
WANTLIB-main += curl dca drm dvdnav dvdread enca expat fontconfig
WANTLIB-main += freetype gdk_pixbuf-2.0 gio-2.0 gsm gstaudio-0.10
WANTLIB-main += gstcontroller-0.10 gstinterfaces-0.10 gstpbutils-0.10
WANTLIB-main += gstriff-0.10 gstrtp-0.10 gstsdp-0.10 gsttag-0.10 gstvideo-0.10
WANTLIB-main += idn jasper lrdf mms mpcdec orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB-main += pangoft2-1.0 pixman-1 png pthread-stubs pthread raptor rsvg-2
WANTLIB-main += schroedinger-1.0 sndfile sndio ssl stdc++ usbhid vpx
WANTLIB-main += fribidi gstapp-0.10 gstfft-0.10 jpeg spandsp tiff
WANTLIB-main += xcb xcb-render xcb-shm xslt

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			${P}/plugins-base \
			audio/gsm \
			audio/libcdaudio \
			audio/libdca \
			audio/libsndfile \
			audio/musepack \
			audio/soundtouch \
			devel/sdl \
			graphics/jasper \
			multimedia/libass \
			multimedia/libdvdnav>=4.2.0 \
			multimedia/libmms \
			multimedia/libvpx \
			multimedia/schroedinger>=1.0.10 \
			telephony/spandsp \
			textproc/liblrdf \
			x11/gnome/librsvg

RUN_DEPENDS-main =	${MODGETTEXT_RUN_DEPENDS} \
			${MODDCONF_RUN_DEPENDS}

WANTLIB-neon =		${WANTLIB} \
			crypto expat neon ssl asn1 gssapi krb5
LIB_DEPENDS-neon =	${LIB_DEPENDS} \
			net/neon

WANTLIB-mjpeg =		${WANTLIB} \
			stdc++ mjpegutils mpeg2encpp mplex2
LIB_DEPENDS-mjpeg =	${LIB_DEPENDS} \
			multimedia/mjpegtools

CONFIGURE_ENV =		ac_cv_path_PYTHON=""
CONFIGURE_ARGS =	--disable-acm \
			--disable-alsa \
			--disable-amrwb \
			--disable-celt \
			--disable-cog \
			--disable-dc1394 \
			--disable-dirac \
			--disable-directdraw \
			--disable-directfb \
			--disable-directsound \
			--disable-divx \
			--disable-dvb \
			--disable-dvdspu \
			--disable-faac \
			--disable-faad \
			--disable-fbdev \
			--disable-gme \
			--disable-kate \
			--disable-lv2 \
			--disable-mimic \
			--disable-modplug \
			--disable-musicbrainz \
			--disable-mythtv \
			--disable-nas \
			--disable-ofa \
			--disable-opencv \
			--disable-osx_video \
			--disable-quicktime \
			--disable-real \
			--disable-spc \
			--disable-vcd \
			--disable-vdpau \
			--disable-wildmidi \
			--disable-wininet \
			--disable-xvid \
			--disable-zbar

# XXX subpackage?
# swfdec not before it's ported from 0.3 to 0.8 API
CONFIGURE_ARGS +=	--disable-timidity \
			--disable-swfdec

.include <bsd.port.mk>
