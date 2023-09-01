COMMENT =	Akonadi management and debugging console
DISTNAME =	akonadiconsole-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  akonadiconsole            2.0 # 5.13.2
WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Auth KF5AuthCore
WANTLIB += KF5CalendarCore KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5Contacts KF5CoreAddons
WANTLIB += KF5Crash KF5DBusAddons KF5I18n KF5ItemModels KF5ItemViews
WANTLIB += KF5KIOCore KF5Service KF5SonnetUi KF5TextAutoCorrectionCore
WANTLIB += KF5TextAutoCorrectionWidgets KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5XmlGui KPim5AkonadiCalendar KPim5AkonadiContact
WANTLIB += KPim5AkonadiCore KPim5AkonadiMime KPim5AkonadiPrivate
WANTLIB += KPim5AkonadiSearchCore KPim5AkonadiSearchXapian KPim5AkonadiWidgets
WANTLIB += KPim5AkonadiXml KPim5CalendarSupport KPim5ContactEditor
WANTLIB += KPim5GrantleeTheme KPim5IdentityManagement KPim5Libkdepim
WANTLIB += KPim5Libkleo KPim5MessageCore KPim5MessageViewer KPim5Mime
WANTLIB += KPim5MimeTreeParser KPim5PimCommon KPim5TextEdit Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Sql
WANTLIB += Qt5Widgets Qt5Xml assuan c gpgme gpgmepp m qgpgme xapian

WANTLIB += lib/inotify/inotify




MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes

BUILD_DEPENDS =	textproc/libxslt \
		devel/boost

LIB_DEPENDS =	databases/xapian-core \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		devel/libinotify \
		security/gpgme,-qt \
		x11/kde-applications/akonadi \
		x11/kde-applications/calendarsupport \
		x11/kde-applications/akonadi-calendar \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim \
		x11/kde-applications/messagelib \
		x11/kde-applications/pimcommon

TEST_IS_INTERACTIVE =	X11

CXXFLAGS +=	-I${LOCALBASE}/include/KPim5/MessageViewer

.include <bsd.port.mk>
