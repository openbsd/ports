COMMENT =	Plasma browser integration
DISTNAME =	plasma-browser-integration-${VERSION}

UNLINKED =	kde-plasma

WANTLIB += ${COMPILER_LIBCXX} KF5Activities KF5ConfigCore KF5CoreAddons
WANTLIB += KF5Crash KF5DBusAddons KF5FileMetaData KF5I18n KF5ItemModels
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOGui KF5Notifications
WANTLIB += KF5Package KF5Plasma KF5Purpose KF5PurposeWidgets KF5Runner
WANTLIB += KF5Service KF5WindowSystem Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Qml Qt5QmlModels Qt5Quick Qt5Widgets
WANTLIB += X11 c m taskmanager

MODKDE5_TRANSLATIONS =	Yes

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/kactivities \
		devel/kf5/kcrash \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kfilemetadata \
		devel/kf5/ki18n \
		devel/kf5/krunner \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/kservice \
		devel/kf5/kpackage \
		devel/kf5/kwindowsystem \
		devel/kf5/purpose \
		x11/qt5/qtdeclarative \
		x11/kde-plasma/plasma-workspace

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
