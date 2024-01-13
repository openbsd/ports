COMMENT =	components relating to pipewire use in Plasma
DISTNAME =	kpipewire-${VERSION}

SHARED_LIBS +=  KPipeWire                 0.0 # 0.0
SHARED_LIBS +=  KPipeWireDmaBuf           0.0 # 0.0
SHARED_LIBS +=  KPipeWireRecord           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} EGL GL KF5CoreAddons KF5I18n Qt5Core
WANTLIB += Qt5Gui Qt5Network Qt5Qml Qt5QmlModels Qt5Quick avcodec
WANTLIB += avformat avutil drm epoxy gbm m pipewire-0.3 swscale

MODKDE5_TRANSLATIONS =	Yes

RUN_DEPENDS =	multimedia/pipewire/pipewire

BUILD_DEPENDS =	devel/kf5/kwayland \
		wayland/plasma-wayland-protocols

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		graphics/ffmpeg \
		multimedia/pipewire/pipewire,-libs \
		x11/qt5/qtdeclarative

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
