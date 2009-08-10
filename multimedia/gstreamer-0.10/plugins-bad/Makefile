# $OpenBSD: Makefile,v 1.18 2009/08/10 06:33:02 kili Exp $

COMMENT-main =		multimedia framework - plugins bad
COMMENT-tremor =	multimedia framework - tremor plugin
COMMENT-musepack =	multimedia framework - musepack plugin
COMMENT-faac =		multimedia framework - faac plugin
COMMENT-faad =		multimedia framework - faad plugin
COMMENT-xvid =		multimedia framework - xvid plugin
COMMENT-sdl =		multimedia framework - sdl plugin
COMMENT-bz2 =		multimedia framework - bz2 plugin
COMMENT-gsm =		multimedia framework - gsm plugin
COMMENT-ladspa =	multimedia framework - ladspa plugin
COMMENT-neon =		multimedia framework - neon plugin
COMMENT-swf =		multimedia framework - flash plugin
COMMENT-meta =		multimedia framework - metadata plugin
COMMENT-sndfile =	multimedia framework - sndfile plugin
COMMENT-real =		multimedia framework - real plugin
COMMENT-x264 =		multimedia framework - x264 plugin
COMMENT-mplex =		multimedia framework - mplex plugin

V =			0.10.7
DISTNAME =		gst-plugins-bad-$V
PKGNAME-main =		gstreamer-plugins-bad-${V}p6
PKGNAME-tremor =	gstreamer-tremor-$Vp3
PKGNAME-musepack =	gstreamer-musepack-$Vp3
PKGNAME-faac =		gstreamer-faac-$Vp3
PKGNAME-faad =		gstreamer-faad-$Vp3
PKGNAME-xvid =		gstreamer-xvid-$Vp4
PKGNAME-sdl =		gstreamer-sdl-$Vp6
PKGNAME-bz2 =		gstreamer-bz2-$Vp3
PKGNAME-gsm =		gstreamer-gsm-$Vp3
PKGNAME-ladspa =	gstreamer-ladspa-$Vp3
PKGNAME-neon =		gstreamer-neon-$Vp4
PKGNAME-swf =		gstreamer-flash-$Vp2
PKGNAME-meta =		gstreamer-meta-$Vp3
PKGNAME-sndfile =	gstreamer-sndfile-$Vp3
PKGNAME-real =		gstreamer-real-$Vp3
PKGNAME-x264 =		gstreamer-x264-$Vp2
PKGNAME-mplex =		gstreamer-mplex-$Vp1

MULTI_PACKAGES =	-main -tremor -musepack -faac -faad -xvid -sdl -bz2 \
			-gsm -ladspa -meta -neon -sndfile -x264 -mplex

SHARED_LIBS +=	gstapp-0.10           0.0     # .0.0

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-bad/}
MODULES =		devel/gettext

WANTLIB =		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 xml2 \
			z m pcre
LIB_DEPENDS =		gstreamer-0.10:gstreamer->=0.10:$P/core
RUN_DEPENDS =		::${BUILD_PKGPATH}

WANTLIB-main =		${WANTLIB} \
			stdc++ \
			gstbase-0.10 gstcontroller-0.10

LIB_DEPENDS-main = 	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10,gstvideo-0.10,gstriff-0.10,gstnetbuffer-0.10,gstpbutils-0.10,gstrtp-0.10,gstsdp-0.10,gsttag-0.10::$P/plugins-base

RUN_DEPENDS-main =

WANTLIB-tremor =	${WANTLIB} \
			gstbase-0.10

LIB_DEPENDS-tremor =	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10::$P/plugins-base \
			vorbisidec::audio/tremor

WANTLIB-musepack =	${WANTLIB}

LIB_DEPENDS-musepack =	${LIB_DEPENDS} \
			mpcdec::audio/libmpcdec

WANTLIB-faac =		${WANTLIB} \
			gstbase-0.10

LIB_DEPENDS-faac =	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10::$P/plugins-base \
			faac::audio/faac

WANTLIB-faad =		${WANTLIB} \
			gstbase-0.10

LIB_DEPENDS-faad =	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10::$P/plugins-base \
			faad::audio/faad

WANTLIB-xvid =		${WANTLIB}

LIB_DEPENDS-xvid =	${LIB_DEPENDS} \
			xvidcore::multimedia/xvidcore

WANTLIB-sdl =		${WANTLIB} \
			X11 Xext gstbase-0.10 usbhid Xau Xdmcp Xrandr \
			Xrender pthread-stubs sndio xcb
LIB_DEPENDS-sdl =	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10,gstvideo-0.10::$P/plugins-base \
			SDL::devel/sdl

WANTLIB-bz2 =		${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-bz2 =	${LIB_DEPENDS} \
			bz2::archivers/bzip2

WANTLIB-gsm =		${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-gsm =	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10::$P/plugins-base \
			gsm::audio/gsm

BUILD_DEPENDS +=	::audio/ladspa

WANTLIB-ladspa =	${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-ladspa =	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10::$P/plugins-base

WANTLIB-neon =		${WANTLIB} \
			gstbase-0.10 \
			crypto expat ssl asn1 gssapi krb5

LIB_DEPENDS-neon =	${LIB_DEPENDS} \
			neon::net/neon

WANTLIB-swf =		${WANTLIB}
LIB_DEPENDS-swf =	${LIB_DEPENDS}

WANTLIB-meta =		${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-meta =	${LIB_DEPENDS} \
			exif::graphics/libexif \
			gsttag-0.10::$P/plugins-base

WANTLIB-sndfile =	${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-sndfile =	${LIB_DEPENDS} \
			sndfile::audio/libsndfile

.if ${MACHINE_ARCH} == i386 || ${MACHINE_ARCH} == amd64
MULTI_PACKAGES +=	-real

WANTLIB-real =		${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-real =	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10::$P/plugins-base
.endif

WANTLIB-x264 =		${WANTLIB}
LIB_DEPENDS-x264 =	${LIB_DEPENDS} \
			x264.>=1::multimedia/x264

WANTLIB-mplex =		${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-mplex =	${LIB_DEPENDS} \
			mjpegutils.>=4,mplex2.>=5::multimedia/mjpegtools

CONFIGURE_ARGS =	--disable-alsa \
			--disable-amrwb \
			--disable-cdaudio \
			--disable-dc1394 \
			--disable-dfbvideosink \
			--disable-dirac \
			--disable-directfb \
			--disable-divx \
			--disable-dts \
			--disable-dtsdec \
			--disable-dvb \
			--disable-fbdevsink \
			--disable-gstalsa \
			--disable-jack \
			--disable-libmms \
			--disable-mpeg2enc \
			--disable-musicbrainz \
			--disable-mythtvsrc \
			--disable-nassink \
			--disable-ofa \
			--disable-oss4 \
			--disable-qtwrapper \
			--disable-soundtouch \
			--disable-spc \
			--disable-swfdec \
			--disable-theoradec \
			--disable-timidity \
			--disable-vcdsrc \
			--disable-wavpack \
			--disable-wildmidi \
			--disable-wininet

.include <bsd.port.mk>
