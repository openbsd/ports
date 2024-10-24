COMMENT =	power management daemon
DISTNAME =	powerdevil-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL KF6AuthCore KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6GlobalAccel KF6I18n KF6IdleTime
WANTLIB += KF6ItemModels KF6JobWidgets KF6KCMUtils KF6KCMUtilsCore
WANTLIB += KF6KCMUtilsQuick KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Notifications KF6Runner KF6Screen KF6ScreenDpms
WANTLIB += KF6Service KF6Solid KF6WidgetsAddons KF6XmlGui Kirigami
WANTLIB += KirigamiPlatform Plasma PlasmaActivities QCoro6Core
WANTLIB += QCoro6DBus Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6WaylandClient Qt6Widgets
WANTLIB += Qt6Xml c kworkspace6 m udev wayland-client wayland-cursor
WANTLIB += xcb xcb-dpms xkbcommon

SHARED_LIBS +=  powerdevilconfigcommonprivate 1.0 # 0.0
SHARED_LIBS +=  powerdevilcore                1.0 # 0.0
SHARED_LIBS +=  powerdevilui                  1.0 # 0.0

MODKDE_TRANSLATIONS =	Yes

RUN_DEPENDS =	devel/desktop-file-utils \
		sysutils/upower \
		devel/kf6/bluez-qt \
		x11/dbus,-suid

BUILD_DEPENDS =	devel/kf6/bluez-qt

LIB_DEPENDS =	devel/kf6/kauth \
		devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kglobalaccel \
		devel/kf6/ki18n \
		devel/kf6/kidletime \
		devel/kf6/kio \
		devel/kf6/kirigami \
		devel/kf6/kitemmodels  \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/krunner \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/qcoro,qt6 \
		sysutils/libudev-openbsd \
		wayland/wayland \
		x11/kde-plasma/libkscreen>=${VERSION} \
		x11/kde-plasma/libplasma>=${VERSION} \
		x11/kde-plasma/plasma-activities>=${VERSION} \
		x11/kde-plasma/plasma-workspace>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtwayland \
		x11/xkbcommon

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
