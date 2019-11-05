# $OpenBSD: Makefile,v 1.9 2019/11/05 10:18:53 rsadowski Exp $

QT5NAME =		QtMultimedia
COMMENT-main =		Qt5 multimedia components

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =	Qt5Multimedia		2.2
SHARED_LIBS +=	Qt5MultimediaQuick_p	2.2
SHARED_LIBS +=	Qt5MultimediaWidgets	2.2
SHARED_LIBS +=	qgsttools_p		2.2

WANTLIB =  ${COMPILER_LIBCXX}
WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5OpenGL Qt5Qml Qt5Quick
WANTLIB += Qt5Widgets glib-2.0 gobject-2.0 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstphotography-1.0 gstreamer-1.0
WANTLIB += gstvideo-1.0 intl m openal pthread pulse pulse-mainloop-glib

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
PSEUDO_FLAVORS =	bootstrap no_examples
FLAVOR ?=		bootstrap no_examples

MODQMAKE_ARGS =		GST_VERSION=1.0
MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
