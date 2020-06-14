# $OpenBSD: Makefile,v 1.1.1.1 2020/06/14 04:48:47 rsadowski Exp $

COMMENT =	documentenal information management suite
DISTNAME =	kontact-${VERSION}
CATEGORIES =	net www

SHARED_LIBS +=  kontactprivate       0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiCore KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5GrantleeTheme
WANTLIB += KF5I18n KF5IconThemes KF5ItemModels KF5JobWidgets KF5KCMUtils
WANTLIB += KF5KIOCore KF5KIOWidgets KF5KdepimDBusInterfaces KF5KontactInterface
WANTLIB += KF5Libkdepim KF5Parts KF5Service KF5SonnetUi KF5TextWidgets
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Positioning Qt5PrintSupport
WANTLIB += Qt5Qml Qt5Quick Qt5WebChannel Qt5WebEngine Qt5WebEngineCore
WANTLIB += Qt5WebEngineWidgets Qt5Widgets Qt5Xml c m

MODKDE5_TRANSLATIONS = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes

MODULES +=	x11/kde-applications

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
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		x11/kde-applications/akonadi \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/kdepim-apps-libs \
		x11/kde-applications/kontactinterface \
		x11/kde-applications/libkdepim \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
