# $OpenBSD: Makefile,v 1.12 2015/07/05 00:47:56 zhuk Exp $

COMMENT =	GStreamer-based Phonon backend
VERSION =	4.8.2
DISTNAME =	phonon-backend-gstreamer-${VERSION}
HOMEPAGE =	https://projects.kde.org/projects/kdesupport/phonon/phonon-gstreamer

# allow playing Vorbis and MP3 notification sounds out of the box
RUN_DEPENDS =	multimedia/gstreamer1/plugins-ugly \
		x11/gtk+3,-guic

LIB_DEPENDS =	multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-base

WANTLIB =	GL m
WANTLIB +=	lib/qt4/QtGui lib/qt4/QtOpenGL
WANTLIB +=	glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB +=	gstaudio-1.0 gstbase-1.0 gstpbutils-1.0
WANTLIB +=	gstreamer-1.0 gstvideo-1.0 gstapp-1.0

.include <bsd.port.mk>
