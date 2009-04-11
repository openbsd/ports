# $OpenBSD: Makefile,v 1.10 2009/04/11 14:37:21 ajacoutot Exp $

COMMENT-main =		multimedia framework - plugins ugly
COMMENT-sidplay =	multimedia framework - sidplay plugin
COMMENT-a52 =		multimedia framework - a52 plugin
COMMENT-mad =		multimedia framework - mad plugin
COMMENT-lame =		multimedia framework - lame plugin
COMMENT-mpeg2 =		multimedia framework - mpeg2 plugin
COMMENT-dvdread =	multimedia framework - dvdread plugin

V =			0.10.7
DISTNAME =		gst-plugins-ugly-$V
PKGNAME-main =		gstreamer-plugins-ugly-$Vp1
PKGNAME-sidplay =	gstreamer-sidplay-$Vp2
PKGNAME-a52 =		gstreamer-a52-$Vp2
PKGNAME-mad =		gstreamer-mad-$Vp2
PKGNAME-lame =		gstreamer-lame-$Vp2
PKGNAME-mpeg2 =		gstreamer-mpeg2-$Vp2
PKGNAME-dvdread =	gstreamer-dvdread-$Vp2
MULTI_PACKAGES =	-main -sidplay -lame -mad -a52 -mpeg2 -dvdread

PERMIT_PACKAGE_CDROM =	Patent issues
PERMIT_DISTFILES_CDROM =Patent issues
SHARED_LIBS =

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-ugly/}

MODULES =		devel/gettext

WANTLIB =		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
			xml2 m z pcre
LIB_DEPENDS =		gstreamer-0.10:gstreamer->=0.10:$P/core
RUN_DEPENDS =		::${BUILD_PKGPATH}

WANTLIB-main =		${WANTLIB}
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			gstriff-0.10,gstrtsp-0.10,gstsdp-0.10,gsttag-0.10::$P/plugins-base \
			gstbase-0.10,gstaudio-0.10,gstinterfaces-0.10:gstreamer->=0.10:$P/core
RUN_DEPENDS-main =	

			
WANTLIB-sidplay =	${WANTLIB} stdc++
LIB_DEPENDS-sidplay =	${LIB_DEPENDS} \
			sidplay::audio/libsidplay

WANTLIB-a52 =		${WANTLIB}
LIB_DEPENDS-a52 =	${LIB_DEPENDS} \
			oil-0.3::devel/liboil \
			gstaudio-0.10,gstinterfaces-0.10::$P/plugins-base \
			gstbase-0.10:gstreamer->=0.10:$P/core \
			a52::audio/liba52

WANTLIB-mad =		${WANTLIB}
LIB_DEPENDS-mad =	${LIB_DEPENDS} \
			gsttag-0.10,gstbase-0.10:gstreamer->=0.10:$P/core \
			gstaudio-0.10,gstinterfaces-0.10::$P/plugins-base \
			id3tag::audio/libid3tag \
			mad::audio/libmad

WANTLIB-lame =		${WANTLIB}
LIB_DEPENDS-lame =	${LIB_DEPENDS} \
			mp3lame::audio/lame

WANTLIB-mpeg2 =		${WANTLIB}

LIB_DEPENDS-mpeg2 =	${LIB_DEPENDS} \
			mpeg2::graphics/libmpeg2

WANTLIB-dvdread =	${WANTLIB} \
			gstbase-0.10

LIB_DEPENDS-dvdread =	${LIB_DEPENDS} \
			dvdread::devel/libdvdread

CONFIGURE_ARGS =		--disable-amrnb


.include <bsd.port.mk>
