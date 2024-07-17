QT6NAME =	QtMultimedia
COMMENT =	Qt6 multimedia components
PKGSPEC =	qt6-qtmultimedia-${QT6_PKGSPEC}
REVISION =	0

SHARED_LIBS +=  Qt6Multimedia             6.0 # 6.6
SHARED_LIBS +=  Qt6MultimediaQuick        4.0 # 6.6
SHARED_LIBS +=  Qt6MultimediaWidgets      1.0 # 6.6
SHARED_LIBS +=  Qt6SpatialAudio           1.0 # 6.6
SHARED_LIBS +=	Qt6Quick3DSpatialAudio    0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} EGL GL Qt6Core Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6Quick3D Qt6Quick3DRuntimeRender
WANTLIB += Qt6Quick3DUtils Qt6ShaderTools Qt6Widgets X11 Xext
WANTLIB += Xrandr avcodec avformat avutil c drm glib-2.0 gobject-2.0
WANTLIB += gstallocators-1.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstgl-1.0 gstpbutils-1.0 gstphotography-1.0 gstreamer-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 intl m pulse swresample swscale
WANTLIB += xkbcommon

BUILD_DEPENDS =	graphics/vulkan-loader \
		x11/qt6/qtshadertools \
		x11/qt6/qtsvg

LIB_DEPENDS =	audio/pulseaudio \
		devel/gettext \
		devel/glib2 \
		graphics/ffmpeg \
		multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-bad \
		multimedia/gstreamer1/plugins-base \
		x11/qt6/qtdeclarative \
		x11/qt6/qtquick3d \
		x11/qt6/qtshadertools \
		x11/xkbcommon

CONFIGURE_ARGS =	-DQT_FEATURE_ffmpeg=ON \
			-DQT_FEATURE_gstreamer_1_0=ON \
			-DQT_FEATURE_vaapi=OFF

MODCMAKE_LDFLAGS +=	-L${X11BASE}/lib

.include <bsd.port.mk>
