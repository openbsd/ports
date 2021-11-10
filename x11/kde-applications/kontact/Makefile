# $OpenBSD: Makefile,v 1.13 2021/11/10 06:37:52 rsadowski Exp $

COMMENT =	documentenal information management suite
DISTNAME =	kontact-${VERSION}
CATEGORIES =	net www

SHARED_LIBS +=  kontactprivate       0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5GrantleeTheme KF5I18n KF5IconThemes KF5JobWidgets
WANTLIB += KF5KCMUtils KF5KIOCore KF5KIOGui KF5KIOWidgets KF5KontactInterface
WANTLIB += KF5Libkdepim KF5Parts KF5PimCommon KF5Service KF5Solid
WANTLIB += KF5SonnetUi KF5TextWidgets KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5WebChannel Qt5WebEngine Qt5WebEngineCore
WANTLIB += Qt5WebEngineWidgets Qt5Widgets Qt5Xml X11 c m

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost \
		x11/kde-applications/akonadi-contacts \
		devel/kf5/kitemmodels

RUN_DEPENDS =	x11/kde-applications/kdepim-runtime \
		x11/kde-applications/akonadi-contacts \
		devel/kf5/kitemmodels

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/kontactinterface \
		x11/kde-applications/libkdepim \
		x11/kde-applications/pimcommon \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
