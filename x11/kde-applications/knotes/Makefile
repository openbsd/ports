COMMENT =	notes management tool
DISTNAME =	knotes-${VERSION}
CATEGORIES =	net www

HOMEPAGE =	http://knotesapp.com/

SHARED_LIBS +=  knotesprivate           2.0 # 5.13.2
SHARED_LIBS +=  notesharedprivate       4.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} GL KF6Attica KF6Bookmarks KF6CalendarCore
WANTLIB += KF6ColorScheme KF6Completion KF6ConfigCore KF6ConfigGui
WANTLIB += KF6ConfigWidgets KF6Contacts KF6CoreAddons KF6Crash
WANTLIB += KF6DNSSD KF6GlobalAccel KF6I18n KF6IconThemes KF6ItemModels
WANTLIB += KF6ItemViews KF6JobWidgets KF6KCMUtils KF6KCMUtilsCore
WANTLIB += KF6KCMUtilsQuick KF6KIOCore KF6KIOFileWidgets KF6KIOGui
WANTLIB += KF6KIOWidgets KF6NewStuffCore KF6NewStuffWidgets KF6Notifications
WANTLIB += KF6NotifyConfig KF6Parts KF6Service KF6Solid KF6SonnetUi
WANTLIB += KF6StatusNotifierItem KF6TextAutoCorrectionCore KF6TextAutoCorrectionWidgets
WANTLIB += KF6TextCustomEditor KF6TextTemplate KF6TextUtils KF6TextWidgets
WANTLIB += KF6WidgetsAddons KF6WindowSystem KF6XmlGui KPim6AkonadiAgentBase
WANTLIB += KPim6AkonadiContactCore KPim6AkonadiContactWidgets
WANTLIB += KPim6AkonadiCore KPim6AkonadiNotes KPim6AkonadiSearchDebug
WANTLIB += KPim6AkonadiSearchPIM KPim6AkonadiWidgets KPim6CalendarUtils
WANTLIB += KPim6GrantleeTheme KPim6IMAP KPim6KontactInterface
WANTLIB += KPim6Libkdepim KPim6Mime KPim6PimCommon KPim6PimCommonAkonadi
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6PrintSupport Qt6Qml
WANTLIB += Qt6Widgets Qt6Xml X11 c m

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

RUN_DEPENDS =	x11/kde-applications/kdepim-runtime>=${MODKDE_VERSION}

LIB_DEPENDS =	devel/kf6/attica \
		devel/kf6/kbookmarks \
		devel/kf6/kcalendarcore \
		devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdnssd \
		devel/kf6/kglobalaccel \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knewstuff \
		devel/kf6/knotifications \
		devel/kf6/knotifyconfig \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/ktexttemplate \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		textproc/ktextaddons \
		x11/kde-applications/akonadi-contacts>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-notes>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-search>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi>=${MODKDE_VERSION} \
		x11/kde-applications/grantleetheme>=${MODKDE_VERSION} \
		x11/kde-applications/kcalutils>=${MODKDE_VERSION} \
		x11/kde-applications/kimap>=${MODKDE_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_VERSION} \
		x11/kde-applications/kontactinterface>=${MODKDE_VERSION} \
		x11/kde-applications/kpimtextedit>=${MODKDE_VERSION} \
		x11/kde-applications/libkdepim>=${MODKDE_VERSION} \
		x11/kde-applications/pimcommon>=${MODKDE_VERSION} \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
