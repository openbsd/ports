# $OpenBSD: Makefile,v 1.36 2014/04/01 16:31:40 ajacoutot Exp $

COMMENT-main=		ugly elements for GStreamer
COMMENT-sidplay=	sidplay element for GStreamer (plugins-ugly)
COMMENT-lame=		lame element for GStreamer (plugins-ugly)

V=			0.10.19
DISTNAME=		gst-plugins-ugly-${V}
PKGNAME=		gstreamer-plugins-ugly-${V}

PKGNAME-main=		gstreamer-plugins-ugly-${V}
PKGNAME-sidplay=	gstreamer-sidplay-${V}
PKGNAME-lame=		gstreamer-lame-${V}

REVISION-main=		4
REVISION-sidplay=	2
REVISION-lame=		2

PERMIT_PACKAGE_CDROM=	Patent issues

MULTI_PACKAGES=		-main -sidplay -lame

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-ugly/}

WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += xml2 m z pcre gstreamer-0.10 ffi pthread

WANTLIB-main += ${WANTLIB}
WANTLIB-main += a52 dvdread gstaudio-0.10 gstbase-0.10 gstinterfaces-0.10
WANTLIB-main += gstpbutils-0.10 gstriff-0.10 gstrtp-0.10 gstrtsp-0.10
WANTLIB-main += gstsdp-0.10 gsttag-0.10 gstvideo-0.10 mad orc-0.4 twolame
WANTLIB-main += x264 dvdcss

WANTLIB-sidplay += ${WANTLIB}
WANTLIB-sidplay += gstbase-0.10 sidplay stdc++

WANTLIB-lame += ${WANTLIB}
WANTLIB-lame += gstaudio-0.10 gstbase-0.10 gstinterfaces-0.10 gstpbutils-0.10
WANTLIB-lame += mp3lame

LIB_DEPENDS=		${P}/core
RUN_DEPENDS=		${BUILD_PKGPATH}

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			${P}/plugins-base \
			audio/liba52 \
			audio/libmad \
			audio/twolame \
			devel/libdvdread \
			multimedia/x264
RUN_DEPENDS-main=	${MODGETTEXT_RUN_DEPENDS}

LIB_DEPENDS-sidplay=	${LIB_DEPENDS} \
			audio/libsidplay

LIB_DEPENDS-lame=	${LIB_DEPENDS} \
			audio/lame

CONFIGURE_ARGS=		--disable-amrnb \
			--disable-amrwb \
			--disable-cdio \
			--disable-mpeg2dec

pre-configure:
	perl -pi -e 's,/dev/dvd,/dev/rcd0c,g' \
		${WRKSRC}/ext/dvdread/dvdreadsrc.c

.include <bsd.port.mk>
