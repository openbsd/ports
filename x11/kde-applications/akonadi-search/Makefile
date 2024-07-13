COMMENT =	libraries and daemons to implement searching in Akonadi
DISTNAME =	akonadi-search-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6AkonadiSearchCore    0.0 # 0.0
SHARED_LIBS +=	KPim6AkonadiSearchDebug   0.0 # 0.0
SHARED_LIBS +=	KPim6AkonadiSearchPIM     0.0 # 0.0
SHARED_LIBS +=	KPim6AkonadiSearchXapian  0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6Codecs KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6Contacts KF6CoreAddons KF6I18n KF6ItemModels KF6KCMUtils
WANTLIB += KF6KCMUtilsCore KF6KCMUtilsQuick KF6Runner KF6TextUtils
WANTLIB += KF6WidgetsAddons KPim6AkonadiAgentBase KPim6AkonadiCore
WANTLIB += KPim6AkonadiMime KPim6Mime Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Qml Qt6Widgets c m xapian

MODKDE_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	databases/xapian-core \
		devel/kf6/kcalendarcore \
		devel/kf6/kcmutils \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kitemmodels \
		devel/kf6/krunner \
		devel/kf6/kwidgetsaddons \
		textproc/ktextaddons \
		x11/qt6/qtdeclarative \
		x11/kde-applications/akonadi>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-mime>=${MODKDE_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
