QT6NAME =	QtMultimedia
COMMENT =	Qt6 multimedia components
PKGSPEC =	qt6-qtmultimedia-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Multimedia             1.1 # 0.0
SHARED_LIBS +=  Qt6MultimediaQuick        2.0 # 0.0
SHARED_LIBS +=  Qt6MultimediaWidgets      0.0 # 0.0
SHARED_LIBS +=  Qt6SpatialAudio           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} EGL GL Qt6Core Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6Widgets avcodec
WANTLIB += avformat avutil c glib-2.0 gobject-2.0 gstallocators-1.0
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstgl-1.0 gstpbutils-1.0
WANTLIB += gstphotography-1.0 gstreamer-1.0 gstvideo-1.0 gthread-2.0
WANTLIB += intl m pulse swresample swscale xkbcommon

BUILD_DEPENDS =	graphics/vulkan-loader \
		x11/qt6/qtshadertools \
		x11/qt6/qtsvg

LIB_DEPENDS =	audio/pulseaudio \
		devel/glib2 \
		graphics/ffmpeg \
		multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-bad \
		multimedia/gstreamer1/plugins-base \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
