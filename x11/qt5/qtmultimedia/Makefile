QT5NAME =		QtMultimedia
COMMENT-main =		Qt5 multimedia components

KDE_COMMIT =		7514352532f41d9f0f8b8d722e360b1854442731
KDE_VERSION =		2

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5Multimedia             3.0 # 5.9
SHARED_LIBS +=  Qt5MultimediaWidgets      3.0 # 5.9
SHARED_LIBS +=  Qt5MultimediaGstTools     0.0 # 5.13
SHARED_LIBS +=  Qt5MultimediaQuick        0.0 # 5.13

WANTLIB-main += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB-main += Qt5QmlModels Qt5Quick Qt5Widgets drm glib-2.0 gobject-2.0
WANTLIB-main += gstallocators-1.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB-main += gstgl-1.0 gstpbutils-1.0 gstphotography-1.0 gstreamer-1.0
WANTLIB-main += gstvideo-1.0 intl m openal pulse pulse-mainloop-glib

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

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
