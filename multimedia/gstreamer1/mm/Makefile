# $OpenBSD: Makefile,v 1.12 2017/05/13 15:44:09 espie Exp $

COMMENT=		C++ bindings for GStreamer

V=			1.8.0
DISTNAME=		gstreamermm-${V}
PKGNAME=		gstreamer1mm-${V}
REVISION=		2

SHARED_LIBS +=  gstreamermm-1.0      1.0      # 1.0

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gstreamermm/${V:R}/}

WANTLIB += c ffi gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 gstallocators-1.0 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstcheck-1.0 gstcontroller-1.0 gstfft-1.0
WANTLIB += gstnet-1.0 gstpbutils-1.0 gstreamer-1.0 gstriff-1.0
WANTLIB += gstrtp-1.0 gstrtsp-1.0 gstsdp-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += iconv intl m orc-0.4 pcre pthread sigc-2.0 z $(LIBECXX)


LIB_DEPENDS=		devel/glib2mm \
			multimedia/gstreamer1/plugins-base

CONFIGURE_ARGS=		ac_cv_path_DOT= \
			ac_cv_path_DOXYGEN=

# needed for the examples
BUILD_DEPENDS +=	x11/gtk3mm

post-install:
	# does nothing (overrides Makefile.inc)

# c++11
.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
MODGCC4_LANGS=		c++
MODCLANG_LANGS=		c++
.endif

.include <bsd.port.mk>
