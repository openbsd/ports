# $OpenBSD: Makefile,v 1.11 2009/09/28 18:28:36 ajacoutot Exp $

COMMENT-main =		multimedia framework - plugins ugly
COMMENT-sidplay =	multimedia framework - sidplay plugin
COMMENT-lame =		multimedia framework - lame plugin

V =			0.10.7
DISTNAME =		gst-plugins-ugly-$V
PKGNAME-main =		gstreamer-plugins-ugly-$Vp2
PKGNAME-sidplay =	gstreamer-sidplay-$Vp2
PKGNAME-lame =		gstreamer-lame-$Vp2

MULTI_PACKAGES =	-main -sidplay -lame

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
			gstbase-0.10,gstaudio-0.10,gstinterfaces-0.10:gstreamer->=0.10:$P/core \
			oil-0.3::devel/liboil \
			a52::audio/liba52 \
			id3tag::audio/libid3tag \
			mad::audio/libmad \
			mpeg2::graphics/libmpeg2 \
			dvdread::devel/libdvdread
RUN_DEPENDS-main =	

			
WANTLIB-sidplay =	${WANTLIB} stdc++
LIB_DEPENDS-sidplay =	${LIB_DEPENDS} \
			sidplay::audio/libsidplay

WANTLIB-lame =		${WANTLIB}
LIB_DEPENDS-lame =	${LIB_DEPENDS} \
			mp3lame::audio/lame

CONFIGURE_ARGS =		--disable-amrnb

.include <bsd.port.mk>
