COMMENT =	download manager for KDE
DISTNAME =	kget-${VERSION}
CATEGORIES =	net www

HOMEPAGE =	https://apps.kde.org/kget

SHARED_LIBS +=  kgetcore                  4.1 # 5.0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5DBusAddons KF5I18n KF5I18nLocaleData
WANTLIB += KF5IconThemes KF5ItemViews KF5JobWidgets KF5KCMUtils
WANTLIB += KF5KIOCore KF5KIOGui KF5KIOWidgets KF5Notifications
WANTLIB += KF5NotifyConfig KF5Service KF5Solid KF5Torrent KF5Wallet
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Sql Qt5Widgets
WANTLIB += Qt5Xml X11 assuan c gcrypt gmp gpgme gpgmepp m mms
WANTLIB += qca-qt5 qgpgme

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
		devel/kf5/kparts \
		x11/qt5/qtquickcontrols

RUN_DEPENDS =	databases/sqlite3 \
		devel/kf5/kinit \
		devel/kf5/kitemmodels \
		x11/kde-applications/kio-extras \
		x11/qt5/qtquickcontrols

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/knotifyconfig \
		devel/kf5/kservice \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		multimedia/libmms \
		net/libktorrent \
		security/gpgme,-qt \
		security/qca-qt5

.include <bsd.port.mk>
