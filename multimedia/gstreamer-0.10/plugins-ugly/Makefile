# $OpenBSD: Makefile,v 1.1.1.1 2007/01/08 17:37:27 espie Exp $

COMMENT-main=		"multimedia framework - plugins ugly"

V=			0.10.5
DISTNAME=		gst-plugins-ugly-$V
PKGNAME-main=		gstreamer-plugins-ugly-$V
MULTI_PACKAGES=		-main

PERMIT_PACKAGE_CDROM=	"Patent issues"
PERMIT_DISTFILES_CDROM=	"Patent issues"
SHARED_LIBS=

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-ugly/}

WANTLIB=		Xv Xext m X11 z gmodule-2.0 xml2 gthread-2.0 \
			gobject-2.0 glib-2.0

MODULES=		devel/gettext

LIB_DEPENDS=		oil-0.3::devel/liboil \
			gstreamer-0.10,gstbase-0.10,gstaudio-0.10,gsttag-0.10,gstinterfaces-0.10:gstreamer->=0.10:multimedia/gstreamer-0.10/core \
			gstriff-0.10::multimedia/gstreamer-0.10/plugins-base \
			dvdread::devel/libdvdread \
			id3tag::audio/libid3tag \
			mp3lame::audio/lame \
			a52::audio/liba52 \
			mad::audio/libmad \
			mpeg2::graphics/libmpeg2
			
CONFIGURE_ARGS=		--disable-amrnb \
			--disable-sidplay

.include <bsd.port.mk>
