# $OpenBSD: Makefile,v 1.10 2020/03/13 16:53:51 rsadowski Exp $

QT5NAME =		QtMultimedia
COMMENT-main =		Qt5 multimedia components

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5Multimedia             3.0 # 5.9
SHARED_LIBS +=  Qt5MultimediaWidgets      3.0 # 5.9
SHARED_LIBS +=  Qt5MultimediaGstTools     0.0 # 5.13
SHARED_LIBS +=  Qt5MultimediaQuick        0.0 # 5.13

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5OpenGL
WANTLIB += Qt5Qml Qt5Quick Qt5Widgets glib-2.0 gobject-2.0 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstphotography-1.0
WANTLIB += gstreamer-1.0 gstvideo-1.0 intl m openal pulse pulse-mainloop-glib

BUILD_DEPENDS =		multimedia/gstreamer1/mm

RUN_DEPENDS-main =	multimedia/gstreamer1/mm

RUN_DEPENDS-examples =	x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

LIB_DEPENDS =		audio/openal \
			audio/pulseaudio \
			multimedia/gstreamer1/core \
			multimedia/gstreamer1/plugins-base \
			multimedia/gstreamer1/plugins-bad \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

# XXX will pick up libresourceqt5 if installed, see the
# https://git.merproject.org/mer-core/libresourceqt/

# do not build documentation by default, to avoid circular dependency
# via qtdeclarative-docindex

FLAVORS =		debug
FLAVOR ?=		bootstrap no_examples
PSEUDO_FLAVORS =	bootstrap no_examples

MODQMAKE_ARGS =		GST_VERSION=1.0
MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
