COMMENT =	KDE File Manager
DISTNAME =	dolphin-${VERSION}
PKGNAME =	kf6-dolphin-${VERSION}
CATEGORIES =	x11
REVISION =	0

HOMEPAGE =	https://apps.kde.org/dolphin

SHARED_LIBS +=  dolphinprivate            10.0 # 5.0
SHARED_LIBS +=  dolphinvcs                2.1 # 5.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Attica KF6Bookmarks KF6BookmarksWidgets
WANTLIB += KF6Codecs KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6I18n KF6IconThemes KF6ItemViews KF6JobWidgets
WANTLIB += KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore
WANTLIB += KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets KF6NewStuffCore
WANTLIB += KF6NewStuffWidgets KF6Notifications KF6Parts KF6Service
WANTLIB += KF6Solid KF6SonnetUi KF6TextWidgets KF6UserFeedbackCore
WANTLIB += KF6UserFeedbackWidgets KF6WidgetsAddons KF6WindowSystem
WANTLIB += KF6XmlGui PlasmaActivities Qt6Concurrent Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Qml Qt6Widgets Qt6Xml X11 c m
WANTLIB += phonon4qt6 xkbcommon

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	print/poppler,-qt6 \
		devel/kf6/kfilemetadata

RUN_DEPENDS =	devel/kf6/kfilemetadata \
		misc/shared-mime-info \
		x11/kde-applications/ffmpegthumbs>=${MODKDE_VERSION} \
		x11/kde-applications/kdesdk-thumbnailers>=${MODKDE_VERSION} \
		x11/kde-applications/kf6-kio-extras>=${MODKDE_VERSION} \
		x11/kde-applications/konsole>=${MODKDE_VERSION}

LIB_DEPENDS =	devel/kf6/attica \
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
		x11/kde-plasma/plasma-activities \
		x11/qt6/qtdeclarative \
		multimedia/phonon,qt6 \
		x11/xkbcommon

#x11/kde-applications/baloo-widgets>=${MODKDE_VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
