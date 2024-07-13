COMMENT =	KDEs screen management software

DISTNAME =	kscreen-${VERSION}

MODKDE_TRANSLATIONS =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6DBusAddons
WANTLIB += KF6I18n KF6KCMUtilsCore KF6KCMUtilsQuick KF6Screen
WANTLIB += KF6WidgetsAddons KF6WindowSystem KF6XmlGui LayerShellQtInterface
WANTLIB += Plasma PlasmaQuick Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6Sensors Qt6Widgets
WANTLIB += Qt6Xml X11 X11-xcb Xext Xi c m xcb xcb-util xkbcommon

BUILD_DEPENDS =	devel/kf6/kcmutils

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		x11/kde-plasma/layer-shell-qt>=${VERSION} \
		x11/kde-plasma/libkscreen>=${VERSION} \
		x11/kde-plasma/libplasma>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsensors \
		x11/xkbcommon

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
