COMMENT =	components relating to pipewire use in Plasma

DISTNAME =	kpipewire-${VERSION}

SHARED_LIBS +=  KPipeWire                 0.0 # 0.0
SHARED_LIBS +=  KPipeWireDmaBuf           0.0 # 0.0
SHARED_LIBS +=  KPipeWireRecord           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} EGL GL KF6CoreAddons KF6I18n Qt6Core
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlMeta Qt6QmlModels
WANTLIB += Qt6QmlWorkerScript Qt6Quick avcodec avfilter avformat
WANTLIB += avutil drm epoxy gbm m pipewire-0.3 swscale va va-drm
WANTLIB += xkbcommon

MODKDE_TRANSLATIONS =	Yes

RUN_DEPENDS =	multimedia/pipewire/pipewire

LIB_DEPENDS =	devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		graphics/ffmpeg \
		multimedia/pipewire/pipewire,-libs \
		x11/qt6/qtdeclarative \
		x11/xkbcommon

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
