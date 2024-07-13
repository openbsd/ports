COMMENT =	KDE PIM mail importer library
DISTNAME =	mailimporter-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6MailImporter         0.0 # 0.0
SHARED_LIBS +=	KPim6MailImporterAkonadi  0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6I18n
WANTLIB += KF6ItemModels KF6KIOCore KF6TextAutoCorrectionCore
WANTLIB += KF6TextAutoCorrectionWidgets KF6TextCustomEditor KF6WidgetsAddons
WANTLIB += KPim6AkonadiCore KPim6AkonadiMime KPim6Mime KPim6PimCommon
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Widgets Qt6Xml
WANTLIB += m

MODKDE_TRANSLATIONS = yes

MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kitemmodels \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfigwidgets \
		devel/kf6/kio \
		devel/kf6/kwidgetsaddons \
		textproc/ktextaddons \
		x11/kde-applications/akonadi>=${MODKDE_VERSION} \
		x11/kde-applications/akonadi-mime>=${MODKDE_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_VERSION} \
		x11/kde-applications/pimcommon>=${MODKDE_VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
