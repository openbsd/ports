# $OpenBSD: Makefile,v 1.4 2007/01/09 23:22:56 espie Exp $

COMMENT-main=		"multimedia framework - good plugins"
COMMENT-aalib=		"multimedia framework - aalib plugin"
COMMENT-cairo=		"multimedia framework - cairo plugin"
COMMENT-gconf=		"multimedia framework - conf elements"
COMMENT-esd=		"multimedia framework - esound plugin"
COMMENT-flac=		"multimedia framework - flac plugin"
COMMENT-speex=		"multimedia framework - speex plugin"

V=			0.10.5
DISTNAME=		gst-plugins-good-$V
PKGNAME-main=		gstreamer-plugins-good-$V
PKGNAME-aalib=		gstreamer-aalib-$V
PKGNAME-cairo=		gstreamer-cairo-$V
PKGNAME-gconf=		gstreamer-confelements-$V
PKGNAME-esd=		gstreamer-esd-$V
PKGNAME-flac=		gstreamer-flac-$V
PKGNAME-speex=		gstreamer-speex-$V


MULTI_PACKAGES=		-main -aalib -cairo -gconf -esd -flac -speex
SHARED_LIBS=

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-good/}

WANTLIB=		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
			xml2 m z
#			m z popt ICE SM X11 Xdamage Xext Xfixes \
#			ORBit-2 gconf-2

MODULES=		devel/gettext

LIB_DEPENDS=		gstreamer-0.10:gstreamer->=0.10:multimedia/gstreamer-0.10/core

WANTLIB-main=		${WANTLIB} \
			ICE SM X11 Xdamage Xext Xfixes ossaudio \
			gstcontroller-0.10 gstbase-0.10
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			oil-0.3::devel/liboil \
			gstaudio-0.10,gstinterfaces-0.10,gstnetbuffer-0.10,gstriff-0.10,gstrtp-0.10,gsttag-0.10,gstvideo-0.10::multimedia/gstreamer-0.10/plugins-base

WANTLIB-aalib=		${WANTLIB} \
			X11 ncurses gstbase-0.10
LIB_DEPENDS-aalib=	${LIB_DEPENDS} \
			aa::graphics/aalib

WANTLIB-cairo=		${WANTLIB} \
			X11 Xext Xrender fontconfig freetype \
			glitz png gstbase-0.10
LIB_DEPENDS-cairo=	${LIB_DEPENDS} \
			cairo::graphics/cairo

WANTLIB-gconf=		${WANTLIB} \
			ORBit-2 popt
LIB_DEPENDS-gconf=	${LIB_DEPENDS} \
			gconf-2::devel/gconf2

WANTLIB-esd=		${WANTLIB} \
			audiofile gstbase-0.10

LIB_DEPENDS-esd=	${LIB_DEPENDS} \
			esd::audio/esound \
			gstaudio-0.10,gstinterfaces-0.10::multimedia/gstreamer-0.10/plugins-base

WANTLIB-flac=		${WANTLIB} \
			gstbase-0.10

LIB_DEPENDS-flac=	${LIB_DEPENDS} \
			FLAC::audio/flac \
			gsttag-0.10::multimedia/gstreamer-0.10/plugins-base

WANTLIB-speex=		${WANTLIB} \
			gstbase-0.10

LIB_DEPENDS-speex=	${LIB_DEPENDS} \
			speex::audio/speex \
			gsttag-0.10::multimedia/gstreamer-0.10/plugins-base

CONFIGURE_ARGS+=	--with-aalib-prefix=${LOCALBASE} \
			--disable-cdio \
			--disable-dv1394 \
			--disable-gdk_pixbuf \
			--disable-jpeg \
			--disable-ladspa \
			--disable-libcaca \
			--disable-libdv \
			--disable-libpng \
			--disable-shout2 \
			--disable-taglib

post-install:
		${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/gconf/schemas/gstreamer-${VERSION}.schemas ${PREFIX}/lib/gstreamer-${VERSION}/schemas.sample

#			dv::multimedia/libdv \
#			jpeg::graphics/jpeg \
#			png::graphics/png \


.include <bsd.port.mk>
