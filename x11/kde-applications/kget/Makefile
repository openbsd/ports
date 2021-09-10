# $OpenBSD: Makefile,v 1.8 2021/09/10 08:43:53 rsadowski Exp $

COMMENT =	download manager for KDE
DISTNAME =	kget-${VERSION}
CATEGORIES =	net www

HOMEPAGE =	https://www.kde.org/applications/internet/kget/

SHARED_LIBS +=  kgetcore                  1.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KCMUtils KF5KDELibs4Support KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOGui KF5KIOWidgets KF5Notifications KF5NotifyConfig
WANTLIB += KF5Parts KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5Torrent KF5UnitConversion KF5Wallet KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5PrintSupport Qt5Sql Qt5Widgets
WANTLIB += Qt5Xml assuan c gcrypt gmp gpgme gpgmepp m mms qca-qt5
WANTLIB += qgpgme

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	databases/sqlite3 \
		devel/boost \
		devel/kf5/kinit \
		devel/kf5/kitemmodels \
		x11/qt5/qtquickcontrols

RUN_DEPENDS =	databases/sqlite3 \
		devel/kf5/kinit \
		devel/kf5/kitemmodels \
		x11/kde-applications/kio-extras \
		x11/qt5/qtquickcontrols

LIB_DEPENDS =	devel/kf5/karchive \
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
		devel/kf5/kdelibs4support \
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/knotifyconfig \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kunitconversion \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		multimedia/libmms \
		net/libktorrent \
		security/gpgme,-qt \
		security/qca-qt5

.include <bsd.port.mk>
