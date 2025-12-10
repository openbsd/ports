QT6NAME =	QtMultimedia
COMMENT =	Qt6 multimedia components
PKGSPEC =	qt6-qtmultimedia-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Multimedia             9.0 # 6.7
SHARED_LIBS +=  Qt6MultimediaQuick        6.0 # 6.7
SHARED_LIBS +=  Qt6MultimediaWidgets      1.0 # 6.7
SHARED_LIBS +=  Qt6SpatialAudio           2.0 # 6.7
SHARED_LIBS +=	Qt6Quick3DSpatialAudio    0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} EGL GL Qt6Concurrent Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlMeta Qt6QmlModels
WANTLIB += Qt6QmlWorkerScript Qt6Quick Qt6Quick3D Qt6Quick3DRuntimeRender
WANTLIB += Qt6Quick3DUtils Qt6ShaderTools Qt6Widgets X11 X11-xcb
WANTLIB += Xext Xrandr avcodec avformat avutil drm glib-2.0 gobject-2.0
WANTLIB += gstallocators-1.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstgl-1.0 gstpbutils-1.0 gstphotography-1.0 gstplay-1.0
WANTLIB += gstreamer-1.0 gstvideo-1.0 intl m pulse swresample
WANTLIB += swscale wayland-client wayland-egl xcb xkbcommon

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
			-DQT_FEATURE_pipewire=OFF \
			-DQT_FEATURE_vaapi=OFF

MODCMAKE_LDFLAGS +=	-L${X11BASE}/lib

# avoid error: always_inline function '_mm_add_ps' requires target feature
# 'sse', but would be inlined into function 'AddPointwise' that is compiled
# without support for 'sse' (in src/3rdparty/resonance-audio)
.if ${MACHINE_ARCH} == i386
CFLAGS +=	-msse
CXXFLAGS +=	-msse
.endif

.include <bsd.port.mk>
