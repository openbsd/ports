# $OpenBSD: Makefile,v 1.2 2016/12/28 01:41:24 zhuk Exp $

QT5NAME =		QtMultimedia
COMMENT-main =		Qt5 multimedia components
REVISION-qch =		0
REVISION-html =		0

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS =	Qt5Multimedia		2.0
SHARED_LIBS +=	Qt5MultimediaQuick_p	2.0
SHARED_LIBS +=  Qt5MultimediaWidgets	2.0
#SHARED_LIBS +=  fftreal		2.0
SHARED_LIBS +=  qgsttools_p		2.0

WANTLIB =  GL Qt5Core Qt5Gui Qt5Network Qt5OpenGL Qt5Qml Qt5Quick
WANTLIB += Qt5Widgets glib-2.0 gobject-2.0 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstphotography-1.0 gstreamer-1.0
WANTLIB += gstvideo-1.0 intl m openal pthread pulse

BUILD_DEPENDS =		multimedia/gstreamer1/mm

RUN_DEPENDS-main =	multimedia/gstreamer1/mm

RUN_DEPENDS-examples =	x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

LIB_DEPENDS =		audio/openal \
			audio/pulseaudio \
			multimedia/gstreamer1/core \
			multimedia/gstreamer1/plugins-base \
			multimedia/gstreamer1/plugins-bad \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

MODQMAKE_ARGS =		GST_VERSION=1.0

.include <bsd.port.mk>
