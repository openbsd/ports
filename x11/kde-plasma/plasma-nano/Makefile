COMMENT =	minimal Plasma shell package
DISTNAME =	plasma-nano-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5Service
WANTLIB += KF5WaylandClient KF5WindowSystem Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5Widgets X11 m

MODKDE5_TRANSLATIONS =	Yes

RUN_DEPENDS =	x11/qt5/qtquickcontrols2
BUILD_DEPENDS =	x11/qt5/qtquickcontrols2

LIB_DEPENDS +=	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kservice \
		devel/kf5/kwayland \
		devel/kf5/kwindowsystem \
		x11/qt5/qtdeclarative

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
