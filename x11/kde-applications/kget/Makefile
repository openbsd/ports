COMMENT =	download manager for KDE
DISTNAME =	kget-${VERSION}
CATEGORIES =	net www
REVISION =	0

HOMEPAGE =	https://apps.kde.org/kget

SHARED_LIBS +=  kgetcore                  4.1 # 5.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6GuiAddons KF6I18n KF6I18nLocaleData
WANTLIB += KF6IconThemes KF6IconWidgets KF6ItemViews KF6JobWidgets
WANTLIB += KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Notifications KF6NotifyConfig
WANTLIB += KF6Service KF6Solid KF6StatusNotifierItem KF6Wallet
WANTLIB += KF6WidgetsAddons KF6WindowSystem KF6XmlGui KTorrent6
WANTLIB += Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui Qt6Network Qt6Qml
WANTLIB += Qt6Sql Qt6Widgets Qt6Xml X11 assuan c gcrypt gmp gpgme
WANTLIB += gpgmepp m mms qgpgmeqt6

MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DESKTOP_FILE = yes
MODKDE_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	databases/sqlite3 \
		devel/boost \
		devel/kf6/kitemmodels \
		devel/kf6/kparts

RUN_DEPENDS =	databases/sqlite3 \
		devel/kf6/kitemmodels \
		x11/kde-applications/kf6-kio-extras>=${VERSION}

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
		devel/kf6/kguiaddons \
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
		security/qgpgme \
		security/libassuan \
		security/libgcrypt \
		x11/qt6/qt5compat \
		x11/qt6/qtdeclarative


CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_LibKWorkspace=ON

.include <bsd.port.mk>
