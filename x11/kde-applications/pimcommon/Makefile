COMMENT =	common libraries for KDE PIM
DISTNAME =	pimcommon-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6PimCommon            0.0 # 0.0
SHARED_LIBS +=	KPim6PimCommonAkonadi     0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Attica KF6Codecs KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6Contacts KF6CoreAddons KF6I18n KF6ItemModels KF6ItemViews
WANTLIB += KF6JobWidgets KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick
WANTLIB += KF6KIOCore KF6KIOGui KF6KIOWidgets KF6NewStuffCore
WANTLIB += KF6NewStuffWidgets KF6Purpose KF6PurposeWidgets KF6Service
WANTLIB += KF6Solid KF6TextAutoCorrectionCore KF6TextAutoCorrectionWidgets
WANTLIB += KF6TextCustomEditor KF6TextTemplate KF6WidgetsAddons
WANTLIB += KF6XmlGui KPim6AkonadiContactCore KPim6AkonadiContactWidgets
WANTLIB += KPim6AkonadiCore KPim6AkonadiSearchPIM KPim6AkonadiWidgets
WANTLIB += KPim6GrantleeTheme KPim6IMAP KPim6LdapCore KPim6LdapWidgets
WANTLIB += KPim6Libkdepim KPim6Mime Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Qml Qt6Widgets Qt6Xml m

MODKDE_TRANSLATIONS = yes

MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	textproc/libxslt \
		devel/boost

LIB_DEPENDS =	devel/kf6/attica \
		devel/kf6/kcmutils \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knewstuff \
		devel/kf6/kservice \
		devel/kf6/ktexttemplate \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/purpose \
		devel/kf6/solid \
		textproc/ktextaddons \
		x11/kde-applications/akonadi-contacts>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-search>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi>=${MODKDE_VERSION} \
		x11/kde-applications/grantleetheme>=${MODKDE_VERSION} \
		x11/kde-applications/kimap>=${MODKDE_VERSION} \
		x11/kde-applications/kldap>=${MODKDE_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_VERSION} \
		x11/kde-applications/kpimtextedit>=${MODKDE_VERSION} \
		x11/kde-applications/libkdepim>=${MODKDE_VERSION} \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
