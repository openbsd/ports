COMMENT =	KDEs screen management software
DISTNAME =	kscreen-${VERSION}

MODKDE5_TRANSLATIONS =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5DBusAddons
WANTLIB += KF5Declarative KF5GlobalAccel KF5I18n KF5Package KF5Plasma
WANTLIB += KF5PlasmaQuick KF5QuickAddons KF5Screen KF5ScreenDpms
WANTLIB += KF5Service KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += LayerShellQtInterface Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5Sensors Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml X11 X11-xcb Xext Xi c m xcb xcb-util

BUILD_DEPENDS =	devel/kf5/kcmutils

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kdeclarative \
		devel/kf5/kglobalaccel \
		devel/kf5/ki18n \
		devel/kf5/kpackage \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/plasma-framework \
		x11/kde-plasma/libkscreen \
		x11/kde-plasma/layer-shell-qt \
		x11/qt5/qtdeclarative \
		x11/qt5/qtsensors

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
