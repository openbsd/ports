COMMENT =	KDEs screen management software

DISTNAME =	kscreen-${VERSION}
REVISION =	0

MODKDE_TRANSLATIONS =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6GuiAddons KF6I18n KF6I18nQml KF6KCMUtilsCore
WANTLIB += KF6KCMUtilsQuick KF6Screen KF6WidgetsAddons KF6WindowSystem
WANTLIB += KF6XmlGui KirigamiPlatform LayerShellQtInterface Plasma
WANTLIB += PlasmaQuick Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6Quick Qt6QuickControls2 Qt6WaylandClient
WANTLIB += Qt6Widgets Qt6Xml X11 X11-xcb Xext Xi c m wayland-client
WANTLIB += wayland-cursor xcb xcb-util xkbcommon

KDE_DEPENDS =	devel/kf6/kauth \
		devel/kf6/kcodecs \
		devel/kf6/kirigami \
		devel/kf6/kpackage \
		devel/kf6/kservice \
		devel/kf6/ksvg

BUILD_DEPENDS =	${KDE_DEPENDS} \
		wayland/plasma-wayland-protocols \
		wayland/wayland-protocols \
		devel/kf6/kimageformats \
		devel/kf6/kitemmodels \
		x11/kde-plasma/plasma5support>=${VERSION}

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf6/kimageformats \
		devel/kf6/kitemmodels

LIB_DEPENDS =	devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kirigami \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		wayland/wayland \
		x11/kde-plasma/layer-shell-qt>=${VERSION} \
		x11/kde-plasma/libkscreen>=${VERSION} \
		x11/kde-plasma/libplasma>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/xkbcommon

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
