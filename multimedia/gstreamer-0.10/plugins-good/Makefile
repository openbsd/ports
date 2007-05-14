# $OpenBSD: Makefile,v 1.9 2007/05/14 05:51:43 jasper Exp $

COMMENT-main=		"multimedia framework - good plugins"
COMMENT-aalib=		"multimedia framework - aalib plugin"
COMMENT-cairo=		"multimedia framework - cairo plugin"
COMMENT-gconf=		"multimedia framework - conf elements"
COMMENT-esd=		"multimedia framework - esound plugin"
COMMENT-flac=		"multimedia framework - flac plugin"
COMMENT-speex=		"multimedia framework - speex plugin"
COMMENT-taglib=		"multimedia framework - taglib plugin"
COMMENT-dv=		"multimedia framework - dv plugin"
COMMENT-jpeg=		"multimedia framework - jpeg plugin"
COMMENT-png=		"multimedia framework - png plugin"
COMMENT-gdk=		"multimedia framework - gdk pixbuf plugin"
COMMENT-caca=		"multimedia framework - libcaca plugin"
COMMENT-shout=		"multimedia framework - shoutcast plugin"

V=			0.10.5
DISTNAME=		gst-plugins-good-$V
PKGNAME-main=		gstreamer-plugins-good-$V
PKGNAME-aalib=		gstreamer-aalib-$V
PKGNAME-cairo=		gstreamer-cairo-$Vp0
PKGNAME-gconf=		gstreamer-confelements-$Vp0
PKGNAME-esd=		gstreamer-esd-$V
PKGNAME-flac=		gstreamer-flac-$V
PKGNAME-speex=		gstreamer-speex-$V
PKGNAME-taglib=		gstreamer-taglib-$V
PKGNAME-dv=		gstreamer-dv-$V
PKGNAME-jpeg=		gstreamer-jpeg-$V
PKGNAME-png=		gstreamer-png-$V
PKGNAME-gdk=		gstreamer-gdk-pixbuf-$Vp0
PKGNAME-caca=		gstreamer-libcaca-$V
PKGNAME-shout=		gstreamer-shoutcast-$V


MULTI_PACKAGES=		-main -aalib -cairo -gconf -esd -flac -speex \
			-taglib -dv -jpeg -png -gdk -caca -shout
SHARED_LIBS=

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-good/}

MODULES=		devel/gettext

RUN_DEPENDS=		::${BUILD_PKGPATH}
WANTLIB=		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
			xml2 m z
LIB_DEPENDS=		gstreamer-0.10:gstreamer->=0.10:multimedia/gstreamer-0.10/core

WANTLIB-main=		${WANTLIB} \
			ICE SM X11 Xdamage Xext Xfixes ossaudio \
			gstcontroller-0.10 gstbase-0.10
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			oil-0.3::devel/liboil \
			gstaudio-0.10,gstinterfaces-0.10,gstnetbuffer-0.10,gstriff-0.10,gstrtp-0.10,gsttag-0.10,gstvideo-0.10::multimedia/gstreamer-0.10/plugins-base
RUN_DEPENDS-main=	

WANTLIB-aalib=		${WANTLIB} \
			X11 ncurses gstbase-0.10
LIB_DEPENDS-aalib=	${LIB_DEPENDS} \
			aa::graphics/aalib

WANTLIB-cairo=		${WANTLIB} \
			ICE SM X11 Xext Xrender fontconfig freetype \
			glitz png gstbase-0.10
LIB_DEPENDS-cairo=	${LIB_DEPENDS} \
			cairo::graphics/cairo

WANTLIB-gconf=		${WANTLIB} \
			ORBit-2
LIB_DEPENDS-gconf=	${LIB_DEPENDS} \
			popt::devel/popt \
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

WANTLIB-taglib=		${WANTLIB} \
			stdc++

LIB_DEPENDS-taglib=	${LIB_DEPENDS} \
			gsttag-0.10::multimedia/gstreamer-0.10/plugins-base \
			tag::audio/taglib

WANTLIB-dv=		${WANTLIB} \
			gstbase-0.10

LIB_DEPENDS-dv=		${LIB_DEPENDS} \
			dv::multimedia/libdv \
			gstaudio-0.10,gstinterfaces-0.10::multimedia/gstreamer-0.10/plugins-base

WANTLIB-jpeg=		${WANTLIB} \

LIB_DEPENDS-jpeg=	${LIB_DEPENDS} \
			jpeg::graphics/jpeg

WANTLIB-png=		${WANTLIB} \

LIB_DEPENDS-png=	${LIB_DEPENDS} \
			png::graphics/png

WANTLIB-gdk=		${WANTLIB} ICE SM \
			X11 Xext Xrender atk-1.0 cairo fontconfig freetype \
			glitz pango-1.0 pangocairo-1.0 pangoft2-1.0 png \
			gstbase-0.10

LIB_DEPENDS-gdk=	${LIB_DEPENDS} \
			gdk_pixbuf-2.0,gtk-x11-2.0,gdk-x11-2.0::x11/gtk+2

BUILD_DEPENDS+=		::graphics/libcaca

WANTLIB-caca=		${WANTLIB} \
			X11 gstbase-0.10 ncurses

LIB_DEPENDS-caca=	${LIB_DEPENDS}
			
WANTLIB-shout=		${WANTLIB} \
			gstbase-0.10 ogg speex vorbis theora
			
LIB_DEPENDS-shout=	${LIB_DEPENDS} \
			speex::audio/speex \
			shout::net/libshout

CONFIGURE_ARGS+=	--with-aalib-prefix=${LOCALBASE} \
			--disable-cdio \
			--disable-dv1394 \

post-install:
		${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/gconf/schemas/gstreamer-${VERSION}.schemas ${PREFIX}/lib/gstreamer-${VERSION}/schemas.sample

.include <bsd.port.mk>
