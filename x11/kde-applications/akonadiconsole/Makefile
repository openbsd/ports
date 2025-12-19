COMMENT =	Akonadi management and debugging console
DISTNAME =	akonadiconsole-${VERSION}
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=  akonadiconsole            2.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6Contacts KF6CoreAddons KF6Crash KF6DBusAddons KF6GuiAddons
WANTLIB += KF6I18n KF6ItemModels KF6ItemViews KF6KIOCore KF6Service
WANTLIB += KF6SonnetUi KF6TextAutoCorrectionCore KF6TextAutoCorrectionWidgets
WANTLIB += KF6TextCustomEditor KF6TextTemplate KF6TextWidgets
WANTLIB += KF6WidgetsAddons KF6XmlGui KPim6AkonadiCalendar KPim6AkonadiCalendarCore
WANTLIB += KPim6AkonadiContactCore KPim6AkonadiContactWidgets
WANTLIB += KPim6AkonadiCore KPim6AkonadiMime KPim6AkonadiPrivate
WANTLIB += KPim6AkonadiSearchCore KPim6AkonadiSearchXapian KPim6AkonadiWidgets
WANTLIB += KPim6AkonadiXml KPim6CalendarSupport KPim6GrantleeTheme
WANTLIB += KPim6IdentityManagementCore KPim6Libkdepim KPim6Libkleo
WANTLIB += KPim6MessageCore KPim6MessageViewer KPim6Mime KPim6MimeTreeParser
WANTLIB += KPim6PimCommon Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6PrintSupport
WANTLIB += Qt6Sql Qt6Widgets Qt6Xml assuan c gpgme gpgmepp m qgpgmeqt6
WANTLIB += xapian

MODKDE_TRANSLATIONS = yes
MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes

BUILD_DEPENDS =	textproc/libxslt \
		devel/boost

LIB_DEPENDS =	databases/xapian-core \
		devel/kf6/kcalendarcore \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kguiaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kitemviews \
		devel/kf6/kservice \
		devel/kf6/ktexttemplate \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/sonnet \
		security/qgpgme \
		security/libassuan \
		textproc/ktextaddons \
		x11/kde-applications/akonadi-calendar>=${VERSION} \
		x11/kde-applications/akonadi-contacts>=${VERSION} \
		x11/kde-applications/akonadi-mime>=${VERSION} \
		x11/kde-applications/akonadi-search>=${VERSION} \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/calendarsupport>=${VERSION} \
		x11/kde-applications/grantleetheme>=${VERSION} \
		x11/kde-applications/kidentitymanagement>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION} \
		x11/kde-applications/libkdepim>=${VERSION} \
		x11/kde-applications/libkleo>=${VERSION} \
		x11/kde-applications/messagelib>=${VERSION} \
		x11/kde-applications/pimcommon>=${VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
