COMMENT =	KDE Plasma hotkeys
DISTNAME =	khotkeys-${VERSION}

SHARED_LIBS +=  khotkeysprivate           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5GlobalAccel KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews
WANTLIB += KF5JobWidgets KF5KCMUtils KF5KDELibs4Support KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOGui KF5KIOWidgets KF5Notifications
WANTLIB += KF5Parts KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5UnitConversion KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Widgets Qt5X11Extras Qt5Xml X11
WANTLIB += Xtst kworkspace5 m

MODKDE5_TRANSLATIONS = Yes
MODKDE5_DOCS = Yes

LIB_DEPENDS += \
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
	devel/kf5/kdelibs4support \
	devel/kf5/kiconthemes \
	devel/kf5/kio \
	devel/kf5/knotifications \
	devel/kf5/solid \
	devel/kf5/kservice \
	devel/kf5/kwidgetsaddons \
	devel/kf5/kwindowsystem \
	devel/kf5/kxmlgui \
	x11/kde-plasma/plasma-workspace

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
