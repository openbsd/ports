# $OpenBSD: Makefile,v 1.2 2007/01/10 02:14:04 espie Exp $

COMMENT-main=		"multimedia framework - plugins ugly"
COMMENT-sidplay=	"multimedia framework - sidplay plugin"
COMMENT-a52=		"multimedia framework - a52 plugin"
COMMENT-mad=		"multimedia framework - mad plugin"
COMMENT-lame=		"multimedia framework - lame plugin"

V=			0.10.5
DISTNAME=		gst-plugins-ugly-$V
PKGNAME-main=		gstreamer-plugins-ugly-$V
PKGNAME-sidplay=	gstreamer-sidplay-$V
PKGNAME-a52=		gstreamer-a52-$V
PKGNAME-mad=		gstreamer-mad-$V
PKGNAME-lame=		gstreamer-lame-$V
MULTI_PACKAGES=		-main -sidplay -lame -mad -a52

PERMIT_PACKAGE_CDROM=	"Patent issues"
PERMIT_DISTFILES_CDROM=	"Patent issues"
SHARED_LIBS=

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-ugly/}

WANTLIB=		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
			xml2 m z

LIB_DEPENDS=		gstreamer-0.10:gstreamer->=0.10:multimedia/gstreamer-0.10/core

MODULES=		devel/gettext

WANTLIB-main=		${WANTLIB}
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			gstriff-0.10::multimedia/gstreamer-0.10/plugins-base \
			gstbase-0.10,gstaudio-0.10,gstinterfaces-0.10:gstreamer->=0.10:multimedia/gstreamer-0.10/core

			
WANTLIB-sidplay=	${WANTLIB}
LIB_DEPENDS-sidplay=	${LIB_DEPENDS} \
			sidplay::audio/libsidplay

WANTLIB-a52=		${WANTLIB}
LIB_DEPENDS-a52=	${LIB_DEPENDS} \
			oil-0.3::devel/liboil \
			gstbase-0.10,gstaudio-0.10,gstinterfaces-0.10:gstreamer->=0.10:multimedia/gstreamer-0.10/core \
			a52::audio/liba52

WANTLIB-mad=		${WANTLIB}
LIB_DEPENDS-mad=	${LIB_DEPENDS} \
			gsttag-0.10:gstreamer->=0.10:multimedia/gstreamer-0.10/core \
			id3tag::audio/libid3tag \
			mad::audio/libmad

WANTLIB-lame=		${WANTLIB}
LIB_DEPENDS-lame=	${LIB_DEPENDS} \
			mp3lame::audio/lame

CONFIGURE_ARGS=		--disable-amrnb \
			--disable-dvdread \
			--disable-dvdnav \
			--disable-nav \
			--disable-mpeg2dec

#			dvdread::devel/libdvdread \
#			mpeg2::graphics/libmpeg2

.include <bsd.port.mk>
