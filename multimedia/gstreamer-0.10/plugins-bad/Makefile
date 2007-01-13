# $OpenBSD: Makefile,v 1.2 2007/01/13 11:23:38 espie Exp $

COMMENT-main=		"multimedia framework - plugins bad"
COMMENT-tremor=		"multimedia framework - tremor plugin"
COMMENT-musepack=	"multimedia framework - musepack plugin"
COMMENT-faac=		"multimedia framework - faac plugin"
COMMENT-faad=		"multimedia framework - faad plugin"
COMMENT-xvid=		"multimedia framework - xvid plugin"
COMMENT-sdl=		"multimedia framework - sdl plugin"
COMMENT-bz2=		"multimedia framework - bz2 plugin"
COMMENT-gsm=		"multimedia framework - gsm plugin"
COMMENT-ladspa=		"multimedia framework - ladspa plugin"
COMMENT-neon=		"multimedia framework - neon plugin"
COMMENT-swf=		"multimedia framework - flash plugin"

V=			0.10.4
DISTNAME=		gst-plugins-bad-$V
PKGNAME-main=		gstreamer-plugins-bad-$V
PKGNAME-tremor=		gstreamer-tremor-$V
PKGNAME-musepack=	gstreamer-musepack-$V
PKGNAME-faac=		gstreamer-faac-$V
PKGNAME-faad=		gstreamer-faad-$V
PKGNAME-xvid=		gstreamer-xvid-$V
PKGNAME-sdl=		gstreamer-sdl-$V
PKGNAME-bz2=		gstreamer-bz2-$V
PKGNAME-gsm=		gstreamer-gsm-$V
PKGNAME-ladspa=		gstreamer-ladspa-$V
PKGNAME-neon=		gstreamer-neon-$V
PKGNAME-swf=		gstreamer-flash-$V
MULTI_PACKAGES=		-main -tremor -musepack -faac -faad -xvid -sdl -bz2 \
			-gsm -ladspa 

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

WANTLIB-sdl=		${WANTLIB} \
			X11 Xext gstbase-0.10 usbhid
LIB_DEPENDS-sdl=	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10,gstvideo-0.10::multimedia/gstreamer-0.10/plugins-base \
			SDL::devel/sdl

WANTLIB-bz2=		${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-bz2=	${LIB_DEPENDS} \
			bz2::archivers/bzip2

WANTLIB-gsm=		${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-gsm=	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10::multimedia/gstreamer-0.10/plugins-base \
			gsm::audio/gsm

BUILD_DEPENDS+=		::audio/ladspa

WANTLIB-ladspa=		${WANTLIB} \
			gstbase-0.10
LIB_DEPENDS-ladspa=	${LIB_DEPENDS} \
			gstaudio-0.10,gstinterfaces-0.10::multimedia/gstreamer-0.10/plugins-base

WANTLIB-neon=		${WANTLIB}

LIB_DEPENDS-neon=	${LIB_DEPENDS}

WANTLIB-swf=		${WANTLIB}

LIB_DEPENDS-swf=	${LIB_DEPENDS}

CONFIGURE_ARGS=		--disable-cdaudio

CONFIGURE_ARGS+=	--disable-alsa \
			--disable-amrwb \
			--disable-directfb \
			--disable-divx \
			--disable-dts \
			--disable-jack \
			--disable-libmms \
			--disable-musicbrainz \
			--disable-soundtouch \
			--disable-spc \
			--disable-theoradec \
			--disable-wavpack \
			--disable-dvb


.include <bsd.port.mk>
