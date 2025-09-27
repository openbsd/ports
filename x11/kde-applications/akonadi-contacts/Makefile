COMMENT =	PIM Akonadi contacts support library
DISTNAME =	akonadi-contacts-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6AkonadiContactCore   0.0 # 0.0
SHARED_LIBS +=	KPim6AkonadiContactWidgets 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Codecs KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6Contacts
WANTLIB += KF6CoreAddons KF6GuiAddons KF6I18n KF6I18nLocaleData
WANTLIB += KF6IconThemes KF6ItemModels KF6JobWidgets KF6KIOCore
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Prison KF6Service KF6SonnetUi
WANTLIB += KF6TextTemplate KF6TextUtils KF6TextWidgets KF6WidgetsAddons
WANTLIB += KF6XmlGui KPim6AkonadiCore KPim6AkonadiPrivate KPim6AkonadiWidgets
WANTLIB += KPim6GrantleeTheme KPim6Mime Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6Widgets Qt6Xml m

MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost \
		devel/kf6/kcmutils

LIB_DEPENDS =	devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/ktexttemplate \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/prison \
		devel/kf6/sonnet \
		textproc/ktextaddons \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/grantleetheme>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
