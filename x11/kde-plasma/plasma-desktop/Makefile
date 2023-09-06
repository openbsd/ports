COMMENT =	KDE tools and widgets for the desktop
DISTNAME =	plasma-desktop-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5Activities KF5ActivitiesStats
WANTLIB += KF5Attica KF5Auth KF5AuthCore KF5Baloo KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5Declarative KF5FileMetaData KF5GlobalAccel KF5GuiAddons
WANTLIB += KF5I18n KF5IconThemes KF5ItemModels KF5ItemViews KF5JobWidgets
WANTLIB += KF5KCMUtils KF5KCMUtilsCore KF5KDELibs4Support KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOGui KF5KIOWidgets KF5NewStuff
WANTLIB += KF5NewStuffCore KF5Notifications KF5NotifyConfig KF5Package
WANTLIB += KF5Parts KF5Plasma KF5PlasmaQuick KF5QuickAddons KF5Runner
WANTLIB += KF5Service KF5Solid KF5SonnetCore KF5SonnetUi KF5TextWidgets
WANTLIB += KF5UnitConversion KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui KSysGuardFormatter Qt5Concurrent Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5QuickWidgets Qt5Sql Qt5WaylandClient Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml X11 X11-xcb Xext Xi accounts-qt5
WANTLIB += c kaccounts kworkspace5 m notificationmanager phonon4qt5
WANTLIB += processcore taskmanager wayland-client xcb xcb-record
WANTLIB += xcb-util xcb-xkb xkbcommon xkbfile

MODKDE5_TRANSLATIONS =	Yes
MODKDE5_ICON_CACHE =	Yes
MODKDE5_DOCS =		Yes

BUILD_DEPENDS =	textproc/intltool \
		productivity/kuserfeedback \
		x11/kde-plasma/kwin \
		devel/kf5/kirigami2 \
		devel/kf5/qqc2-desktop-style

RUN_DEPENDS =	devel/kf5/kirigami2 \
		devel/kf5/qqc2-desktop-style \
		x11/kde-applications/kaccounts-providers \
		devel/desktop-file-utils \
		x11/dbus,-suid

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/baloo \
		devel/kf5/baloo \
		devel/kf5/kactivities \
		devel/kf5/kactivities-stats \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kdeclarative \
		devel/kf5/kfilemetadata \
		devel/kf5/kglobalaccel \
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kdelibs4support \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/knotifications \
		devel/kf5/knotifyconfig \
		devel/kf5/knotifyconfig \
		devel/kf5/kpackage \
		devel/kf5/kparts \
		devel/kf5/krunner \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kunitconversion \
		devel/kf5/kunitconversion \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/plasma-framework \
		devel/kf5/solid \
		devel/kf5/sonnet \
		x11/kde-applications/kaccounts-integration \
		x11/kde-plasma/libksysguard \
		x11/kde-plasma/plasma-workspace \


CONFIGURE_ARGS = \
	-DCMAKE_DISABLE_FIND_PACKAGE_KF5NetworkManagerQt=Yes

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

CFLAGS +=  -I${LOCALBASE}/include/
CXXFLAGS +=        -I${LOCALBASE}/include/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
