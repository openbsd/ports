COMMENT =	power management daemon
DISTNAME =	powerdevil-${VERSION}

UNLINKED =	kde-plasma

SHARED_LIBS +=  powerdevilconfigcommonprivate 0.0 # 0.0
SHARED_LIBS +=  powerdevilcore                0.0 # 0.0
SHARED_LIBS +=  powerdevilui                  0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Activities KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5GlobalAccel KF5I18n KF5IdleTime KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOGui KF5KIOWidgets KF5Kirigami2 KF5Notifications
WANTLIB += KF5NotifyConfig KF5Screen KF5ScreenDpms KF5Service
WANTLIB += KF5Solid KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml X11 c kworkspace5 m udev xcb xcb-dpms

MODKDE5_TRANSLATIONS =	Yes

RUN_DEPENDS =	devel/desktop-file-utils \
		sysutils/upower \
		devel/kf5/bluez-qt \
		x11/dbus,-suid

BUILD_DEPENDS =	devel/kf5/bluez-qt

LIB_DEPENDS =	devel/kf5/kactivities \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kglobalaccel \
		devel/kf5/ki18n \
		devel/kf5/kidletime \
		devel/kf5/kio \
		devel/kf5/kirigami2 \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		sysutils/libudev-openbsd \
		x11/kde-plasma/plasma-workspace>=${VERSION} \
		x11/qt5/qtx11extras

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
