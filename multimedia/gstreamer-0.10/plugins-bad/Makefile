# $OpenBSD: Makefile,v 1.19 2009/09/28 18:28:03 ajacoutot Exp $

COMMENT-main =		multimedia framework - plugins bad
COMMENT-neon =		multimedia framework - neon plugin
COMMENT-real =		multimedia framework - real plugin
COMMENT-mplex =		multimedia framework - mplex plugin

V =			0.10.7
DISTNAME =		gst-plugins-bad-$V
PKGNAME-main =		gstreamer-plugins-bad-${V}p7
PKGNAME-neon =		gstreamer-neon-$Vp4
PKGNAME-real =		gstreamer-real-$Vp3
PKGNAME-mplex =		gstreamer-mplex-$Vp1

MULTI_PACKAGES =	-main -neon -mplex

SHARED_LIBS +=	gstapp-0.10           0.0     # .0.0

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-bad/}
MODULES =		devel/gettext

WANTLIB =		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 xml2 \
			z m pcre
LIB_DEPENDS =		gstreamer-0.10:gstreamer->=0.10:$P/core
RUN_DEPENDS =		::${BUILD_PKGPATH}

WANTLIB-main =		${WANTLIB} \
			stdc++ X11 Xau Xdmcp Xext Xrandr Xrender bz2 pthread-stubs \
			sndio usbhid xcb gstbase-0.10 gstcontroller-0.10

LIB_DEPENDS-main = 	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10,gstvideo-0.10,gstriff-0.10,gstnetbuffer-0.10,gstpbutils-0.10,gstrtp-0.10,gstsdp-0.10,gsttag-0.10::$P/plugins-base \
			vorbisidec.>=2::audio/tremor \
			x264.>=3::multimedia/x264 \
			sndfile.>=3::audio/libsndfile \
			mpcdec.>=3::audio/libmpcdec \
			faac.>=1::audio/faac \
			faad.>=2::audio/faad \
			exif.>=12::graphics/libexif \
			xvidcore.>=4::multimedia/xvidcore \
			SDL.>=8::devel/sdl \
			gsm::audio/gsm

RUN_DEPENDS-main =

BUILD_DEPENDS +=	::audio/ladspa

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
