# $OpenBSD: Makefile,v 1.19 2010/07/24 07:35:08 ajacoutot Exp $

COMMENT-main =		ugly elements for GStreamer
COMMENT-sidplay =	sidplay element for GStreamer (plugins-ugly)
COMMENT-lame =		lame element for GStreamer (plugins-ugly)

V =			0.10.15
DISTNAME =		gst-plugins-ugly-${V}

PKGNAME-main =		gstreamer-plugins-ugly-${V}
PKGNAME-sidplay =	gstreamer-sidplay-${V}
PKGNAME-lame =		gstreamer-lame-${V}

REVISION-main =		0
REVISION-sidplay =	1
REVISION-lame =		1

MULTI_PACKAGES =	-main -sidplay -lame

PERMIT_PACKAGE_CDROM =	Patent issues
PERMIT_DISTFILES_CDROM =Patent issues

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-ugly/}

MODULES =		devel/gettext

WANTLIB =		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
			xml2 m z pcre gstreamer-0.10

.for i in ${MULTI_PACKAGES}
REGRESS_DEPENDS +=	::${BASE_PKGPATH},${i}
.endfor

LIB_DEPENDS =		:gstreamer->=0.10:${P}/core
RUN_DEPENDS =		::${BUILD_PKGPATH}

WANTLIB-main +=		${WANTLIB}
WANTLIB-main +=		gstriff-0.10 gstaudio-0.10 gstrtsp-0.10 gstsdp-0.10
WANTLIB-main +=		gsttag-0.10 gstrtp-0.10 gstvideo-0.10 gstinterfaces-0.10
WANTLIB-main +=		gstbase-0.10 a52 id3tag mad mpeg2 dvdread x264 oil-0.3
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			::$P/plugins-base \
			:gstreamer->=0.10:$P/core \
			::devel/liboil \
			::audio/liba52 \
			::audio/libid3tag \
			::audio/libmad \
			::graphics/libmpeg2 \
			::devel/libdvdread \
			:x264->=20100511:multimedia/x264
RUN_DEPENDS-main =	${MODGETTEXT_RUN_DEPENDS}

WANTLIB-sidplay =	${WANTLIB} gstbase-0.10 stdc++ sidplay
LIB_DEPENDS-sidplay =	${LIB_DEPENDS} \
			::audio/libsidplay

WANTLIB-lame =		${WANTLIB} mp3lame
LIB_DEPENDS-lame =	${LIB_DEPENDS} \
			::audio/lame

CONFIGURE_ARGS =	--disable-amrnb \
			--disable-cdio \
			--disable-twolame
CONFIGURE_ENV +=	ac_cv_path_PYTHON=""

.include <bsd.port.mk>
