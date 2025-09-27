COMMENT =	calendar and scheduling component of kontact
DISTNAME =	korganizer-${VERSION}
CATEGORIES =	net www

SHARED_LIBS +=  korganizer_core         4.0 # 5.13.2
SHARED_LIBS +=  korganizer_interfaces   3.0 # 5.13.2
SHARED_LIBS +=  korganizerprivate       9.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6Contacts KF6CoreAddons KF6Crash KF6GuiAddons KF6Holidays
WANTLIB += KF6I18n KF6IconThemes KF6IconWidgets KF6ItemModels
WANTLIB += KF6ItemViews KF6JobWidgets KF6KCMUtils KF6KCMUtilsCore
WANTLIB += KF6KCMUtilsQuick KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Parts KF6Service KF6TextAutoCorrectionCore KF6TextAutoCorrectionWidgets
WANTLIB += KF6TextCustomEditor KF6TextTemplate KF6UserFeedbackCore
WANTLIB += KF6UserFeedbackWidgets KF6WidgetsAddons KF6WindowSystem
WANTLIB += KF6XmlGui KPim6AkonadiCalendar KPim6AkonadiCalendarCore
WANTLIB += KPim6AkonadiContactCore KPim6AkonadiContactWidgets
WANTLIB += KPim6AkonadiCore KPim6AkonadiMime KPim6AkonadiPrivate
WANTLIB += KPim6AkonadiWidgets KPim6CalendarSupport KPim6CalendarUtils
WANTLIB += KPim6EventViews KPim6GrantleeTheme KPim6IMAP KPim6IdentityManagementCore
WANTLIB += KPim6IncidenceEditor KPim6KontactInterface KPim6LdapCore
WANTLIB += KPim6LdapWidgets KPim6Libkdepim KPim6MailTransport
WANTLIB += KPim6Mime KPim6PimCommon KPim6PimCommonActivities KPim6PimCommonAkonadi
WANTLIB += PlasmaActivities Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6PrintSupport Qt6Qml Qt6Widgets Qt6Xml X11 c m

MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DESKTOP_FILE = yes
MODKDE_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

RUN_DEPENDS =	x11/kde-applications/kdepim-runtime>=${VERSION}

LIB_DEPENDS =	devel/kf6/kcalendarcore \
		devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kholidays \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/kparts \
		devel/kf6/kguiaddons \
		devel/kf6/kservice \
		devel/kf6/ktexttemplate \
		devel/kf6/kuserfeedback \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		textproc/ktextaddons \
		x11/kde-plasma/plasma-activities \
		x11/kde-applications/akonadi-calendar>=${VERSION} \
		x11/kde-applications/akonadi-contacts>=${VERSION} \
		x11/kde-applications/akonadi-mime>=${VERSION} \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/calendarsupport>=${VERSION} \
		x11/kde-applications/eventviews>=${VERSION} \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/incidenceeditor>=${VERSION} \
		x11/kde-applications/kcalutils>=${VERSION} \
		x11/kde-applications/kidentitymanagement>=${VERSION} \
		x11/kde-applications/kimap>=${VERSION} \
		x11/kde-applications/kldap>=${VERSION} \
		x11/kde-applications/kmailtransport>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION} \
		x11/kde-applications/kontactinterface>=${VERSION} \
		x11/kde-applications/libkdepim>=${VERSION} \
		x11/kde-applications/pimcommon>=${VERSION} \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
