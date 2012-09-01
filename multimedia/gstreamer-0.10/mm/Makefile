# $OpenBSD: Makefile,v 1.13 2012/09/01 14:36:57 ajacoutot Exp $

COMMENT =	C++ bindings for GStreamer

V =		0.10.10.2
NAME =		gstreamermm
DISTNAME =	${NAME}-${V}
REVISION=	0

EXTRACT_SUFX =	.tar.xz

SHARED_LIBS +=  gstreamermm_get_plugin_defs-0.10 1.0 # .2.1
SHARED_LIBS +=  gstreamermm-0.10                 1.0 # .2.1

WANTLIB += c ffi gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 glibmm_generate_extra_defs-2.4
WANTLIB += gmodule-2.0 gobject-2.0 gstaudio-0.10 gstbase-0.10
WANTLIB += gstcdda-0.10 gstcontroller-0.10 gstdataprotocol-0.10
WANTLIB += gstinterfaces-0.10 gstnet-0.10 gstnetbuffer-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gstrtp-0.10 gsttag-0.10 gstvideo-0.10
WANTLIB += gthread-2.0 m pcre pthread sigc-2.0 stdc++ xml++-2.6
WANTLIB += xml2 z orc-0.4

MASTER_SITES =	${MASTER_SITE_GNOME:=sources/${NAME}/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}

MODULES =	devel/gettext

MODPY_RUNDEP =	No

BUILD_DEPENDS =	devel/doxygen
LIB_DEPENDS =	devel/glib2mm \
		multimedia/gstreamer-0.10/plugins-base,-cdda \
		textproc/libxml++

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
