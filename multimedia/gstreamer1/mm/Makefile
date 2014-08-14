# $OpenBSD: Makefile,v 1.1.1.1 2014/08/14 20:05:38 ajacoutot Exp $

COMMENT=	C++ bindings for GStreamer

V=		1.0.10
DISTNAME=	gstreamermm-${V}
PKGNAME=	gstreamer1mm-${V}

VR=		${V:R}
SUBST_VARS=	VR

SHARED_LIBS +=  gstreamermm-1.0           0.0 # 0.0
SHARED_LIBS +=  gstreamermm_get_plugin_defs-1.0 0.0 # 0.0

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gstreamermm/${VR}/}

WANTLIB += c ffi gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 glibmm_generate_extra_defs-2.4
WANTLIB += gmodule-2.0 gobject-2.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstcheck-1.0 gstcontroller-1.0 gstfft-1.0 gstnet-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gstriff-1.0 gstrtp-1.0
WANTLIB += gstsdp-1.0 gsttag-1.0 gstvideo-1.0 m orc-0.4 pcre pthread
WANTLIB += sigc-2.0 z

# -std=c++0x
MODULES +=	gcc4
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++

LIB_DEPENDS=	devel/glib2mm \
		multimedia/gstreamer1/plugins-base

# needed for the examples
BUILD_DEPENDS += x11/gtk3mm

post-install:
	# does nothing (overrides Makefile.inc)

.include <bsd.port.mk>
