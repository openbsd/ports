# $OpenBSD: Makefile,v 1.27 2020/08/20 18:00:14 rsadowski Exp $

COMMENT =	GStreamer-based Phonon backend

VERSION =	4.10.0
DISTNAME =	phonon-backend-gstreamer-${VERSION}

MASTER_SITES =	${MASTER_SITE_KDE:=stable/phonon/phonon-backend-gstreamer/${VERSION}/}
EXTRACT_SUFX = .tar.xz

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5OpenGL Qt5Widgets
WANTLIB += Qt5X11Extras glib-2.0 gmodule-2.0 gobject-2.0 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 m phonon4qt5 phonon4qt5experimental

MODULES =	devel/kf5

BUILD_DEPENDS =	devel/gettext,-tools

# allow playing Vorbis and MP3 notification sounds out of the box
RUN_DEPENDS =	multimedia/gstreamer1/plugins-good \
		multimedia/gstreamer1/plugins-libav \
		x11/gtk+3,-guic

LIB_DEPENDS =	multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-base \
		x11/qt5/qtx11extras

CONFIGURE_ARGS =	-DPHONON_BUILD_PHONON4QT5=On

.include <bsd.port.mk>
