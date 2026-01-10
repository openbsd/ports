COMMENT =	KDE interface to GnuPG
DISTNAME =	kgpg-${VERSION}
CATEGORIES =	x11

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Bookmarks KF6Codecs
WANTLIB += KF6ColorScheme KF6Completion KF6ConfigCore KF6ConfigGui
WANTLIB += KF6ConfigWidgets KF6Contacts KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6GuiAddons KF6I18n KF6ItemModels KF6ItemViews
WANTLIB += KF6JobWidgets KF6KIOCore KF6KIOFileWidgets KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Notifications KF6Service KF6Solid
WANTLIB += KF6SonnetUi KF6StatusNotifierItem KF6TextTemplate KF6TextWidgets
WANTLIB += KF6WidgetsAddons KF6WindowSystem KF6XmlGui KPim6AkonadiContactCore
WANTLIB += KPim6AkonadiContactWidgets KPim6AkonadiCore KPim6AkonadiPrivate
WANTLIB += KPim6GrantleeTheme Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6PrintSupport Qt6Widgets Qt6Xml X11 c m

MODKDE_TRANSLATIONS = yes
MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost \
		security/gpgme

RUN_DEPENDS =	security/gpgme

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kbookmarks \
		devel/kf6/kcodecs \
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
		devel/kf6/kguiaddons \
		devel/kf6/knotifications \
		devel/kf6/kservice \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/ktexttemplate \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		x11/kde-applications/akonadi-contacts>=${VERSION} \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/grantleetheme

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>

