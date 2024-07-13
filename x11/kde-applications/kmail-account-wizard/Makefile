COMMENT =	KMail account wizard
DISTNAME =	kmail-account-wizard-${VERSION}
CATEGORIES =	net www
REVISION =	0

SHARED_LIBS +=  kmailprivate       2.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6I18n KF6ItemModels KF6KIOCore KF6WidgetsAddons
WANTLIB += KPim6AkonadiCore KPim6AkonadiWidgets KPim6IdentityManagementCore
WANTLIB += KPim6MailTransport KPim6Mime Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6QuickControls2
WANTLIB += Qt6Widgets Qt6Xml c m

MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes

BUILD_DEPENDS =	devel/boost \
		devel/kf6/knotifyconfig \
		devel/kf6/ktexteditor \
		x11/kde-applications/akonadi-mime>=${MODKDE_VERSION}

RUN_DEPENDS =	devel/kf6/knotifyconfig \
		misc/shared-mime-info \
		x11/kde-applications/akonadi-mime>=${MODKDE_VERSION}

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kwidgetsaddons \
		x11/kde-applications/akonadi>=${MODKDE_VERSION} \
		x11/kde-applications/kidentitymanagement>=${MODKDE_VERSION} \
		x11/kde-applications/kmailtransport>=${MODKDE_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_VERSION} \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
