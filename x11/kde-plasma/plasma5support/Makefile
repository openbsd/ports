COMMENT =	components for porting from KF5/Qt5 to KF6/Qt6

DISTNAME =	plasma5support-${VERSION}
REVISION =	0

MODKDE_TRANSLATIONS =	Yes

SHARED_LIBS +=  Plasma5Support            0.0 # 0.0
SHARED_LIBS +=	weather_ion               0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Bookmarks KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6CoreAddons KF6GuiAddons KF6Holidays
WANTLIB += KF6I18n KF6IdleTime KF6ItemViews KF6JobWidgets KF6KIOCore
WANTLIB += KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets KF6Notifications
WANTLIB += KF6Service KF6Solid KF6UnitConversion KF6WidgetsAddons
WANTLIB += KF6WindowSystem KSysGuardFormatter PlasmaActivities
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6Quick Qt6Sql Qt6Widgets Qt6Xml X11 Xfixes m processcore
WANTLIB += xkbcommon

BUILD_DEPENDS =	devel/kf6/kcmutils

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kbookmarks \
		devel/kf6/kcompletion \
		devel/kf6/kcoreaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kidletime \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kholidays \
		devel/kf6/kunitconversion \
		devel/kf6/kwindowsystem \
		devel/kf6/solid \
		x11/kde-plasma/libksysguard>=${VERSION} \
		x11/kde-plasma/plasma-activities>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/xkbcommon

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
