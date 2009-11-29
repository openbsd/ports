# $OpenBSD: Makefile,v 1.13 2009/11/29 09:17:54 ajacoutot Exp $

COMMENT-main =		ugly elements for GStreamer
COMMENT-sidplay =	sidplay element for GStreamer (ugly)
COMMENT-lame =		lame element for GStreamer (ugly)

V =			0.10.13
DISTNAME =		gst-plugins-ugly-$V

PKGNAME-main =		gstreamer-plugins-ugly-$V
PKGNAME-sidplay =	gstreamer-sidplay-$V
PKGNAME-lame =		gstreamer-lame-$V

MULTI_PACKAGES =	-main -sidplay -lame

PERMIT_PACKAGE_CDROM =	Patent issues
PERMIT_DISTFILES_CDROM =Patent issues

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-ugly/}

MODULES =		devel/gettext

WANTLIB =		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
			xml2 m z pcre

.for i in ${MULTI_PACKAGES}
REGRESS_DEPENDS +=	::${BASE_PKGPATH},${i}
.endfor

LIB_DEPENDS =		gstreamer-0.10:gstreamer->=0.10:$P/core
RUN_DEPENDS =		::${BUILD_PKGPATH}

WANTLIB-main =		${WANTLIB}
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			gstriff-0.10,gstrtsp-0.10,gstsdp-0.10,gsttag-0.10,gstrtp-0.10,gstvideo-0.10::$P/plugins-base \
			gstbase-0.10,gstaudio-0.10,gstinterfaces-0.10:gstreamer->=0.10:$P/core \
			oil-0.3::devel/liboil \
			a52::audio/liba52 \
			id3tag::audio/libid3tag \
			mad::audio/libmad \
			mpeg2::graphics/libmpeg2 \
			dvdread::devel/libdvdread \
			x264.>=3::multimedia/x264
RUN_DEPENDS-main =	${MODGETTEXT_RUN_DEPENDS}

WANTLIB-sidplay =	${WANTLIB} gstbase-0.10 stdc++
LIB_DEPENDS-sidplay =	${LIB_DEPENDS} \
			sidplay::audio/libsidplay

WANTLIB-lame =		${WANTLIB}
LIB_DEPENDS-lame =	${LIB_DEPENDS} \
			mp3lame::audio/lame

CONFIGURE_ARGS =	--disable-amrnb \
			--disable-cdio \
			--disable-twolame
CONFIGURE_ENV +=	ac_cv_path_PYTHON=""

.include <bsd.port.mk>
