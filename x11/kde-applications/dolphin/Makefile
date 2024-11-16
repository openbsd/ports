COMMENT =	KDE File Manager
DISTNAME =	dolphin-${VERSION}
PKGNAME =	kf6-dolphin-${VERSION}
CATEGORIES =	x11

HOMEPAGE =	https://apps.kde.org/dolphin

SHARED_LIBS +=  dolphinprivate            11.0 # 5.0
SHARED_LIBS +=  dolphinvcs                2.1 # 5.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Attica KF6Baloo KF6BalooWidgets
WANTLIB += KF6Bookmarks KF6BookmarksWidgets KF6Codecs KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6Crash KF6DBusAddons KF6FileMetaData
WANTLIB += KF6I18n KF6IconThemes KF6ItemViews KF6JobWidgets KF6KCMUtils
WANTLIB += KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore KF6KIOFileWidgets
WANTLIB += KF6KIOGui KF6KIOWidgets KF6NewStuffCore KF6NewStuffWidgets
WANTLIB += KF6Notifications KF6Parts KF6Service KF6Solid KF6SonnetUi
WANTLIB += KF6TextWidgets KF6UserFeedbackCore KF6UserFeedbackWidgets
WANTLIB += KF6WidgetsAddons KF6WindowSystem KF6XmlGui Qt6Concurrent
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Qml Qt6Widgets
WANTLIB += Qt6Xml X11 c m phonon4qt6 xkbcommon

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	print/poppler,-qt6 \
		devel/kf6/kfilemetadata

RUN_DEPENDS =	devel/kf6/kfilemetadata \
		misc/shared-mime-info \
		x11/kde-applications/ffmpegthumbs>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kdesdk-thumbnailers>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kf6-kio-extras>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/konsole>=${MODKDE_GEAR_VERSION}

LIB_DEPENDS =	devel/kf6/attica \
		devel/kf6/baloo \
		devel/kf6/kbookmarks \
		devel/kf6/kcmutils \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kfilemetadata \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knewstuff \
		devel/kf6/knotifications \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/ktextwidgets \
		devel/kf6/kuserfeedback \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		multimedia/phonon,qt6 \
		x11/kde-applications/baloo-widgets>=${MODKDE_GEAR_VERSION} \
		x11/qt6/qtdeclarative \
		x11/xkbcommon

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
