COMMENT =	download manager for KDE
DISTNAME =	kget-${VERSION}
CATEGORIES =	net www

HOMEPAGE =	https://apps.kde.org/kget

SHARED_LIBS +=  kgetcore                  4.1 # 5.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6I18n KF6I18nLocaleData KF6IconThemes
WANTLIB += KF6IconWidgets KF6ItemViews KF6JobWidgets KF6KCMUtils
WANTLIB += KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Notifications KF6NotifyConfig KF6Service
WANTLIB += KF6Solid KF6StatusNotifierItem KF6Wallet KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui KTorrent6 Qt6Core Qt6Core5Compat
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6Qml Qt6Sql Qt6Widgets
WANTLIB += Qt6Xml X11 assuan c gcrypt gmp gpgme gpgmepp m mms
WANTLIB += qgpgmeqt6

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	databases/sqlite3 \
		devel/boost \
		devel/kf6/kitemmodels \
		devel/kf6/kparts

RUN_DEPENDS =	databases/sqlite3 \
		devel/kf6/kitemmodels \
		x11/kde-applications/kf6-kio-extras>=${MODKDE_VERSION}

LIB_DEPENDS =	devel/gmp \
		devel/kf6/karchive \
		devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/knotifyconfig \
		devel/kf6/kservice \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		multimedia/libmms \
		net/libktorrent \
		security/gpgme,-qt \
		security/libassuan \
		security/libgcrypt \
		x11/qt6/qt5compat \
		x11/qt6/qtdeclarative


CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_LibKWorkspace=ON

.include <bsd.port.mk>
