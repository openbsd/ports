COMMENT =	KDE Plasma control center
DISTNAME =	systemsettings-${VERSION}
PKGNAME =	systemsettings-kf5-${VERSION}
REVISION =	0

SHARED_LIBS +=  systemsettingsview        0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Activities KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5ItemModels KF5ItemViews
WANTLIB += KF5JobWidgets KF5KCMUtils KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Kirigami2 KF5Notifications KF5Package KF5Plasma
WANTLIB += KF5Runner KF5Service KF5Solid KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickWidgets Qt5Widgets
WANTLIB += Qt5Xml X11 c kworkspace5 m

MODKDE5_TRANSLATIONS =	Yes
MODKDE5_DOCS = Yes

BUILD_DEPENDS =	devel/kf5/kdeclarative

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf5/kdeclarative \
		sysutils/lscpu \
		graphics/vulkan-tools

LIB_DEPENDS =	devel/kf5/kactivities \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kirigami2 \
		devel/kf5/knotifications \
		devel/kf5/kpackage \
		devel/kf5/plasma-framework \
		devel/kf5/krunner \
		devel/kf5/solid \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		x11/qt5/qtdeclarative \
		x11/kde-plasma/plasma-workspace>=${VERSION}

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
