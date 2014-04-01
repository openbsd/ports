# $OpenBSD: Makefile,v 1.18 2014/04/01 16:31:40 ajacoutot Exp $

COMMENT=	C++ bindings for GStreamer

V=		0.10.11
NAME=		gstreamermm
DISTNAME=	${NAME}-${V}
EXTRACT_SUFX=	.tar.xz
REVISION=	1

SHARED_LIBS +=  gstreamermm_get_plugin_defs-0.10 1.0 # .2.1
SHARED_LIBS +=  gstreamermm-0.10                 1.0 # .2.1

WANTLIB += c ffi gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 glibmm_generate_extra_defs-2.4
WANTLIB += gmodule-2.0 gobject-2.0 gstaudio-0.10 gstbase-0.10
WANTLIB += gstcdda-0.10 gstcontroller-0.10 gstdataprotocol-0.10
WANTLIB += gstinterfaces-0.10 gstnet-0.10 gstnetbuffer-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gstrtp-0.10 gsttag-0.10 gstvideo-0.10
WANTLIB += gthread-2.0 m orc-0.4 pcre pthread sigc-2.0 stdc++
WANTLIB += xml++-2.6 xml2 z

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/${NAME}/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}

BUILD_DEPENDS=	devel/doxygen
LIB_DEPENDS=	devel/glib2mm>=2.33.12 \
		multimedia/gstreamer-0.10/plugins-base \
		textproc/libxml++

# needed for the examples
BUILD_DEPENDS += x11/gtk3mm

CONFIGURE_STYLE=	gnu

post-install:
	# post-install: do nothing to override Makefile.inc

.include <bsd.port.mk>
