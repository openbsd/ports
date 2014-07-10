# $OpenBSD: Makefile,v 1.3 2014/07/10 08:18:35 espie Exp $

COMMENT =	GStreamer-based Phonon backend
VERSION =	4.6.3
DISTNAME =	phonon-backend-gstreamer-${VERSION}
REVISION =	0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/phonon-backend-gstreamer/${VERSION}/src/}

# allow playing Vorbis and MP3 notification sounds out of the box
RUN_DEPENDS =	multimedia/gstreamer-0.10/plugins-base \
		multimedia/gstreamer-0.10/plugins-ugly \
		x11/gtk+2,-guic

LIB_DEPENDS =	multimedia/gstreamer-0.10/core

WANTLIB =	GL m stdc++
WANTLIB +=	lib/qt4/QtGui lib/qt4/QtOpenGL
WANTLIB +=	glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB +=	gstaudio-0.10 gstbase-0.10 gstinterfaces-0.10 gstpbutils-0.10
WANTLIB +=	gstreamer-0.10 gstvideo-0.10 gstapp-0.10

# XXX
# (gst-plugin-scanner:18789): GLib-GObject-WARNING **: cannot register existing
# type `GstVorbisDec'
# (gst-plugin-scanner:18789): GLib-CRITICAL **: g_once_init_leave: assertion
# `result != 0' failed
# (gst-plugin-scanner:18789): GStreamer-CRITICAL **: gst_element_register:
# assertion `g_type_is_a (type, GST_TYPE_ELEMENT)' failed

.include <bsd.port.mk>
