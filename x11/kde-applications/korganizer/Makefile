COMMENT =	calendar and scheduling component of kontact
DISTNAME =	korganizer-${VERSION}
CATEGORIES =	net www

SHARED_LIBS +=  korganizer_core         3.1 # 5.13.2
SHARED_LIBS +=  korganizer_interfaces   1.1 # 5.13.2
SHARED_LIBS +=  korganizerprivate       8.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} GL KF6Attica KF6CalendarCore KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6Contacts KF6CoreAddons KF6Crash KF6Holidays KF6I18n
WANTLIB += KF6IconThemes KF6IconWidgets KF6ItemModels KF6ItemViews
WANTLIB += KF6JobWidgets KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick
WANTLIB += KF6KIOCore KF6KIOGui KF6KIOWidgets KF6NewStuffCore
WANTLIB += KF6NewStuffWidgets KF6Parts KF6Service KF6Solid KF6TextAutoCorrectionCore
WANTLIB += KF6TextAutoCorrectionWidgets KF6TextCustomEditor KF6TextTemplate
WANTLIB += KF6UserFeedbackCore KF6UserFeedbackWidgets KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui KPim6AkonadiCalendar KPim6AkonadiContactCore
WANTLIB += KPim6AkonadiContactWidgets KPim6AkonadiCore KPim6AkonadiMime
WANTLIB += KPim6AkonadiNotes KPim6AkonadiWidgets KPim6CalendarSupport
WANTLIB += KPim6CalendarUtils KPim6EventViews KPim6GrantleeTheme
WANTLIB += KPim6IMAP KPim6IdentityManagementCore KPim6IncidenceEditor
WANTLIB += KPim6KontactInterface KPim6LdapCore KPim6LdapWidgets
WANTLIB += KPim6Libkdepim KPim6MailTransport KPim6Mime KPim6PimCommon
WANTLIB += KPim6PimCommonAkonadi Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6PrintSupport Qt6Qml Qt6UiTools
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
		devel/kf6/kcalendarcore \
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
		devel/kf6/knewstuff \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/ktexttemplate \
		devel/kf6/kuserfeedback \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		textproc/ktextaddons \
		x11/kde-applications/akonadi-calendar>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-contacts>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-mime>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-notes>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi>=${MODKDE_VERSION} \
		x11/kde-applications/calendarsupport>=${MODKDE_VERSION} \
		x11/kde-applications/eventviews>=${MODKDE_VERSION} \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/incidenceeditor>=${MODKDE_VERSION} \
		x11/kde-applications/kcalutils>=${MODKDE_VERSION} \
		x11/kde-applications/kidentitymanagement>=${MODKDE_VERSION} \
		x11/kde-applications/kimap>=${MODKDE_VERSION} \
		x11/kde-applications/kldap>=${MODKDE_VERSION} \
		x11/kde-applications/kmailtransport>=${MODKDE_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_VERSION} \
		x11/kde-applications/kontactinterface>=${MODKDE_VERSION} \
		x11/kde-applications/kpimtextedit>=${MODKDE_VERSION} \
		x11/kde-applications/libkdepim>=${MODKDE_VERSION} \
		x11/kde-applications/pimcommon>=${MODKDE_VERSION} \
		x11/qt6/qttools \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11


.include <bsd.port.mk>
