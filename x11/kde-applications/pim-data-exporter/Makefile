COMMENT =	KDE PIM data exporter
DISTNAME =	pim-data-exporter-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  pimdataexporterprivate    1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Bookmarks KF6CalendarCore
WANTLIB += KF6ColorScheme KF6Completion KF6ConfigCore KF6ConfigGui
WANTLIB += KF6ConfigWidgets KF6Contacts KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6I18n KF6ItemModels KF6ItemViews KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Notifications KF6Service KF6Solid KF6StatusNotifierItem
WANTLIB += KF6TextAutoCorrectionCore KF6TextAutoCorrectionWidgets
WANTLIB += KF6TextCustomEditor KF6TextTemplate KF6UserFeedbackCore
WANTLIB += KF6UserFeedbackWidgets KF6WidgetsAddons KF6XmlGui KPim6AkonadiContactCore
WANTLIB += KPim6AkonadiContactWidgets KPim6AkonadiCore KPim6AkonadiMime
WANTLIB += KPim6AkonadiNotes KPim6AkonadiWidgets KPim6GrantleeTheme
WANTLIB += KPim6IMAP KPim6IdentityManagementCore KPim6IdentityManagementWidgets
WANTLIB += KPim6Libkdepim KPim6Libkleo KPim6MailCommon KPim6MailTransport
WANTLIB += KPim6MessageComposer KPim6MessageCore KPim6Mime KPim6PimCommon
WANTLIB += KPim6PimCommonAkonadi KPim6TextEdit Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Widgets Qt6Xml assuan c gpgme
WANTLIB += gpgmepp m qgpgmeqt6

MODKDE_TRANSLATIONS = yes
MODKDE_DESKTOP_FILE = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kbookmarks \
		devel/kf6/kcalendarcore \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kservice \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/ktexttemplate \
		devel/kf6/kuserfeedback \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		security/gpgme,-qt \
		security/libassuan \
		textproc/ktextaddons \
		x11/kde-applications/akonadi-contacts>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-mime>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-notes>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi>=${MODKDE_VERSION} \
		x11/kde-applications/grantleetheme>=${MODKDE_VERSION} \
		x11/kde-applications/kidentitymanagement>=${MODKDE_VERSION} \
		x11/kde-applications/kimap>=${MODKDE_VERSION} \
		x11/kde-applications/kmailtransport>=${MODKDE_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_VERSION} \
		x11/kde-applications/kpimtextedit>=${MODKDE_VERSION} \
		x11/kde-applications/libkdepim>=${MODKDE_VERSION} \
		x11/kde-applications/libkleo>=${MODKDE_VERSION} \
		x11/kde-applications/mailcommon>=${MODKDE_VERSION} \
		x11/kde-applications/messagelib>=${MODKDE_VERSION} \
		x11/kde-applications/pimcommon>=${MODKDE_VERSION}

TEST_IS_INTERACTIVE =	X11

CXXFLAGS +=	-I${LOCALBASE}/include/KPim5/MessageViewer

.include <bsd.port.mk>
