COMMENT =	personal alarm message, command and email scheduler
DISTNAME =	kalarm-${VERSION}
CATEGORIES =	productivity

SHARED_LIBS +=  kalarmcalendar           4.0 # 0.0
SHARED_LIBS +=  kalarmplugin             3.0 # 0.0

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6AuthCore KF6Bookmarks KF6CalendarCore
WANTLIB += KF6Codecs KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6Contacts KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6GlobalAccel KF6GuiAddons
WANTLIB += KF6Holidays KF6I18n KF6IconThemes KF6ItemModels KF6ItemViews
WANTLIB += KF6JobWidgets KF6KIOCore KF6KIOFileWidgets KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Notifications KF6NotifyConfig KF6Service
WANTLIB += KF6Solid KF6SonnetUi KF6StatusNotifierItem KF6TextEditTextToSpeech
WANTLIB += KF6TextTemplate KF6TextWidgets KF6WidgetsAddons KF6WindowSystem
WANTLIB += KF6XmlGui KPim6AkonadiContactCore KPim6AkonadiContactWidgets
WANTLIB += KPim6AkonadiCore KPim6AkonadiMime KPim6AkonadiWidgets
WANTLIB += KPim6CalendarUtils KPim6GrantleeTheme KPim6IdentityManagementCore
WANTLIB += KPim6IdentityManagementWidgets KPim6MailTransport KPim6Mime
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Widgets Qt6Xml
WANTLIB += X11 c m mpv vlc

BUILD_DEPENDS =	devel/boost \
		x11/kde-applications/mailcommon>=${VERSION}

RUN_DEPENDS =	x11/dbus,-suid \
		x11/kde-applications/kdepim-runtime>=${VERSION} \
		x11/kde-applications/mailcommon>=${VERSION}

LIB_DEPENDS =	devel/kf6/kauth \
		devel/kf6/kbookmarks \
		devel/kf6/kcalendarcore \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kglobalaccel \
		devel/kf6/kguiaddons \
		devel/kf6/kholidays \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/knotifyconfig \
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
		devel/kf6/kiconthemes \
		x11/vlc \
		multimedia/mpv \
		x11/kde-applications/akonadi-contacts>=${VERSION} \
		x11/kde-applications/akonadi-mime>=${VERSION} \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/grantleetheme>=${VERSION} \
		x11/kde-applications/kcalutils>=${VERSION} \
		x11/kde-applications/kidentitymanagement>=${VERSION} \
		x11/kde-applications/kmailtransport>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION}

.include <bsd.port.mk>
