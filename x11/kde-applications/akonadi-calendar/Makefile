COMMENT =	PIM Akonadi calendar support library
DISTNAME =	akonadi-calendar-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6AkonadiCalendar      1.0 # 0.0
SHARED_LIBS +=	KPim6AkonadiCalendarCore  0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6Codecs KF6ColorScheme
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6Contacts
WANTLIB += KF6CoreAddons KF6Crash KF6DBusAddons KF6GuiAddons KF6I18n
WANTLIB += KF6ItemModels KF6JobWidgets KF6KIOCore KF6KIOGui KF6Notifications
WANTLIB += KF6Service KF6TextAutoCorrectionCore KF6TextAutoCorrectionWidgets
WANTLIB += KF6TextCustomEditor KF6TextTemplate KF6WidgetsAddons
WANTLIB += KF6XmlGui KPim6AkonadiContactCore KPim6AkonadiContactWidgets
WANTLIB += KPim6AkonadiCore KPim6AkonadiMime KPim6AkonadiPrivate
WANTLIB += KPim6AkonadiWidgets KPim6CalendarUtils KPim6GrantleeTheme
WANTLIB += KPim6IMAP KPim6IdentityManagementCore KPim6IdentityManagementWidgets
WANTLIB += KPim6Libkdepim KPim6Libkleo KPim6MailTransport KPim6MessageComposer
WANTLIB += KPim6MessageCore KPim6Mime KPim6PimCommon KPim6PimCommonAkonadi
WANTLIB += KPim6TextEdit Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Widgets
WANTLIB += Qt6Xml assuan c gpgme gpgmepp m qgpgmeqt6

MODKDE_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf6/kcalendarcore \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kguiaddons \
		devel/kf6/kservice \
		devel/kf6/ktexttemplate \
		devel/kf6/kcrash \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		security/gpgme,-qt \
		security/libassuan \
		textproc/ktextaddons \
		x11/kde-applications/akonadi-contacts>=${VERSION} \
		x11/kde-applications/akonadi-mime>=${VERSION} \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/grantleetheme>=${VERSION} \
		x11/kde-applications/kcalutils>=${VERSION} \
		x11/kde-applications/kidentitymanagement>=${VERSION} \
		x11/kde-applications/kimap>=${VERSION} \
		x11/kde-applications/kmailtransport>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION} \
		x11/kde-applications/kpimtextedit>=${VERSION} \
		x11/kde-applications/libkdepim>=${VERSION} \
		x11/kde-applications/libkleo>=${VERSION} \
		x11/kde-applications/messagelib>=${VERSION} \
		x11/kde-applications/pimcommon>=${VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
