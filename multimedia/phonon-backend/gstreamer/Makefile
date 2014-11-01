# $OpenBSD: Makefile,v 1.5 2014/11/01 20:32:54 zhuk Exp $

COMMENT =	GStreamer-based Phonon backend
VERSION =	4.8.0
DISTNAME =	phonon-backend-gstreamer-${VERSION}

MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/phonon-backend-gstreamer/${VERSION}/}

# allow playing Vorbis and MP3 notification sounds out of the box
RUN_DEPENDS =	multimedia/gstreamer1/plugins-base \
		multimedia/gstreamer1/plugins-ugly \
		x11/gtk+2,-guic

LIB_DEPENDS =	multimedia/gstreamer1/core

WANTLIB =	GL m
WANTLIB +=	lib/qt4/QtGui lib/qt4/QtOpenGL
WANTLIB +=	glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB +=	gstaudio-1.0 gstbase-1.0 gstpbutils-1.0
WANTLIB +=	gstreamer-1.0 gstvideo-1.0 gstapp-1.0

.include <bsd.port.mk>
