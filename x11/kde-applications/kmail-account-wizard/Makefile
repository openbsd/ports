COMMENT =	KMail account wizard
DISTNAME =	kmail-account-wizard-${VERSION}
CATEGORIES =	net www

SHARED_LIBS +=  kmailprivate       2.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6I18n KF6I18nQml KF6IconThemes KF6ItemModels
WANTLIB += KF6KIOCore KF6WidgetsAddons KPim6AkonadiCore KPim6AkonadiWidgets
WANTLIB += KPim6IdentityManagementCore KPim6MailTransport KPim6Mime
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6QuickControls2 Qt6Widgets Qt6Xml c m

MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes

BUILD_DEPENDS =	devel/boost \
		devel/kf6/knotifyconfig \
		devel/kf6/ktexteditor \
		x11/kde-applications/akonadi-mime>=${MODKDE_GEAR_VERSION}

RUN_DEPENDS =	devel/kf6/knotifyconfig \
		misc/shared-mime-info \
		x11/kde-applications/akonadi-mime>=${MODKDE_GEAR_VERSION}

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
		devel/kf6/kiconthemes \
		x11/kde-applications/akonadi>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kidentitymanagement>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kmailtransport>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_GEAR_VERSION} \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
