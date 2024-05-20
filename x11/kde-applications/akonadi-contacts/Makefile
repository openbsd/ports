COMMENT =	PIM Akonadi contacts support library
DISTNAME =	akonadi-contacts-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6AkonadiContactCore   0.0 # 0.0
SHARED_LIBS +=	KPim6AkonadiContactWidgets 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Codecs KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6Contacts
WANTLIB += KF6CoreAddons KF6I18n KF6I18nLocaleData KF6IconThemes
WANTLIB += KF6ItemModels KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Prison KF6Service KF6Solid KF6SonnetUi KF6TextTemplate
WANTLIB += KF6TextUtils KF6TextWidgets KF6WidgetsAddons KF6XmlGui
WANTLIB += KPim6AkonadiCore KPim6AkonadiWidgets KPim6GrantleeTheme
WANTLIB += KPim6Mime Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Widgets
WANTLIB += Qt6Xml m

MODKDE5_TRANSLATIONS = yes
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
		devel/kf6/solid \
		devel/kf6/sonnet \
		textproc/ktextaddons \
		x11/kde-applications/akonadi>=${MODKDE_VERSION} \
		x11/kde-applications/grantleetheme>=${MODKDE_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
