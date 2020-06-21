# $OpenBSD: Makefile,v 1.2 2020/06/21 17:11:02 rsadowski Exp $

COMMENT =	KDE-based library for accessing various Google services
DISTNAME =	libkgapi-${VERSION}
CATEGORIES =	www devel
REVISION =	0

SHARED_LIBS +=  KPimGAPIBlogger       0.0 # 5.13.3
SHARED_LIBS +=  KPimGAPICalendar      0.0 # 5.13.3
SHARED_LIBS +=  KPimGAPIContacts      0.0 # 5.13.3
SHARED_LIBS +=  KPimGAPICore          0.0 # 5.13.3
SHARED_LIBS +=  KPimGAPIDrive         0.0 # 5.13.3
SHARED_LIBS +=  KPimGAPILatitude      0.0 # 5.13.3
SHARED_LIBS +=  KPimGAPIMaps          0.0 # 5.13.3
SHARED_LIBS +=  KPimGAPITasks         0.0 # 5.13.3

WANTLIB += ${COMPILER_LIBCXX} KF5CalendarCore KF5Completion KF5ConfigCore
WANTLIB += KF5Contacts KF5CoreAddons KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOWidgets KF5Service KF5Wallet KF5WidgetsAddons
WANTLIB += KF5WindowSystem Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Positioning Qt5PrintSupport Qt5Qml Qt5Quick
WANTLIB += Qt5WebChannel Qt5WebEngineCore Qt5WebEngineWidgets
WANTLIB += Qt5Widgets Qt5Xml m

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kbookmarks \
		devel/kf5/kconfigwidgets \
		devel/kf5/kitemviews \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		security/cyrus-sasl2

RUN_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kbookmarks \
		devel/kf5/kconfigwidgets \
		devel/kf5/kitemviews \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		security/cyrus-sasl2

LIB_DEPENDS =	devel/kf5/kcalendarcore \
		devel/kf5/kcompletion \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine

.include <bsd.port.mk>
