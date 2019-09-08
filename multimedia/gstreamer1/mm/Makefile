# $OpenBSD: Makefile,v 1.22 2019/09/08 10:07:03 ajacoutot Exp $

COMMENT=		C++ bindings for GStreamer

GNOME_PROJECT=		gstreamermm
GNOME_VERSION=		1.10.0
PKGNAME=		gstreamer1mm-${GNOME_VERSION}
REVISION=		3

SHARED_LIBS +=  gstreamermm-1.0      1.1      # 1.0

WANTLIB += ${COMPILER_LIBCXX} c ffi gio-2.0 giomm-2.4 glib-2.0
WANTLIB += glibmm-2.4 gmodule-2.0 gobject-2.0 gstallocators-1.0
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstcheck-1.0 gstcontroller-1.0
WANTLIB += gstfft-1.0 gstnet-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gstriff-1.0 gstrtp-1.0 gstrtsp-1.0 gstsdp-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 iconv intl m orc-0.4 pcre sigc-2.0 z

MODULES=		x11/gnome

# c++11
# note that Makefile.inc has "c" as default
COMPILER_LANGS = c c++

LIB_DEPENDS=		devel/glib2mm \
			multimedia/gstreamer1/plugins-base

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		ac_cv_path_DOT= \
			ac_cv_path_DOXYGEN= \
			--disable-unittests

# needed for the examples
BUILD_DEPENDS +=	x11/gtk3mm

.include <bsd.port.mk>
