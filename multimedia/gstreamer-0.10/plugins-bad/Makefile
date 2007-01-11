# $OpenBSD: Makefile,v 1.1.1.1 2007/01/11 18:12:36 espie Exp $

COMMENT-main=		"multimedia framework - plugins bad"
COMMENT-tremor=		"multimedia framework - tremor plugin"
COMMENT-musepack=	"multimedia framework - musepack plugin"
COMMENT-faac=		"multimedia framework - faac plugin"
COMMENT-faad=		"multimedia framework - faad plugin"
COMMENT-xvid=		"multimedia framework - xvid plugin"

V=			0.10.4
DISTNAME=		gst-plugins-bad-$V
PKGNAME-main=		gstreamer-plugins-bad-$V
PKGNAME-tremor=		gstreamer-tremor-$V
PKGNAME-musepack=	gstreamer-musepack-$V
PKGNAME-faac=		gstreamer-faac-$V
PKGNAME-faad=		gstreamer-faad-$V
PKGNAME-xvid=		gstreamer-xvid-$V
MULTI_PACKAGES=		-main -tremor -musepack -faac -faad -xvid

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-bad/}
MODULES=		devel/gettext

WANTLIB=		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 xml2 \
			z m
LIB_DEPENDS=		gstreamer-0.10:gstreamer->=0.10:multimedia/gstreamer-0.10/core
RUN_DEPENDS=		::${BUILD_PKGPATH}

WANTLIB-main=		${WANTLIB} \
			GL ICE SM X11 stdc++ \
			gstbase-0.10 gstcontroller-0.10

LIB_DEPENDS-main= 	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10,gstvideo-0.10,gstriff-0.10::multimedia/gstreamer-0.10/plugins-base

RUN_DEPENDS-main=
			
WANTLIB-tremor=		${WANTLIB} \
			gstbase-0.10

LIB_DEPENDS-tremor=	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10::multimedia/gstreamer-0.10/plugins-base \
			vorbisidec::audio/tremor

WANTLIB-musepack=	${WANTLIB}

LIB_DEPENDS-musepack=	${LIB_DEPENDS} \
			mpcdec::audio/libmpcdec

WANTLIB-faac=		${WANTLIB} \
			gstbase-0.10

LIB_DEPENDS-faac=	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10::multimedia/gstreamer-0.10/plugins-base \
			faac::audio/faac

WANTLIB-faad=		${WANTLIB} \
			gstbase-0.10

LIB_DEPENDS-faad=	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10::multimedia/gstreamer-0.10/plugins-base \
			faad::audio/faad

WANTLIB-xvid=		${WANTLIB}

LIB_DEPENDS-xvid=	${LIB_DEPENDS} \
			xvidcore::multimedia/xvidcore

CONFIGURE_ARGS=		--disable-bz2 \
			--disable-cdaudio \
			--disable-gsm \
			--disable-ladspa \
			--disable-sdl \

CONFIGURE_ARGS+=	--disable-alsa \
			--disable-amrwb \
			--disable-directfb \
			--disable-divx \
			--disable-dts \
			--disable-jack \
			--disable-libmms \
			--disable-mpeg2enc \
			--disable-musicbrainz \
			--disable-neon \
			--disable-soundtouch \
			--disable-spc \
			--disable-swfdec \
			--disable-theoradec \
			--disable-wavpack \
			--disable-dvb

#			--disable-ivorbis \
#			--disable-musepack \

.include <bsd.port.mk>
