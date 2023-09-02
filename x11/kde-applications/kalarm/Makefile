COMMENT =	personal alarm message, command and email scheduler
DISTNAME =	kalarm-${VERSION}
CATEGORIES =	productivity
REVISION =	0

SHARED_LIBS +=  kalarmcalendar           3.0 # 0.0
SHARED_LIBS +=  kalarmplugin             2.0 # 0.0

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Auth KF5AuthCore
WANTLIB += KF5Bookmarks KF5CalendarCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5Contacts
WANTLIB += KF5CoreAddons KF5Crash KF5DBusAddons KF5GlobalAccel
WANTLIB += KF5GuiAddons KF5Holidays KF5I18n KF5IdleTime KF5ItemModels
WANTLIB += KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOGui KF5KIOWidgets KF5Notifications KF5NotifyConfig
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5TextEditTextToSpeech
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += KPim5AkonadiContact KPim5AkonadiCore KPim5AkonadiMime
WANTLIB += KPim5AkonadiWidgets KPim5CalendarUtils KPim5GrantleeTheme
WANTLIB += KPim5IdentityManagement KPim5IdentityManagementWidgets
WANTLIB += KPim5MailTransport KPim5Mime KPim5TextEdit Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xml X11 c m phonon4qt5

BUILD_DEPENDS =	devel/boost \
		x11/kde-applications/mailcommon

RUN_DEPENDS =	x11/dbus,-suid \
		x11/kde-applications/kdepim-runtime \
		x11/kde-applications/mailcommon

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcalendarcore \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/knotifyconfig \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kidletime \
		devel/kf5/kdbusaddons \
		devel/kf5/kglobalaccel \
		devel/kf5/kguiaddons \
		devel/kf5/kholidays \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		textproc/ktextaddons \
		multimedia/phonon \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/kcalutils \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kmailtransport \
		x11/kde-applications/kpimtextedit \
		x11/qt5/qtx11extras

.include <bsd.port.mk>
