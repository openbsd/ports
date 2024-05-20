COMMENT =	PIM Akonadi mime support library
DISTNAME =	akonadi-mime-${VERSION}
CATEGORIES =	devel productivity

SHARED_LIBS +=	KPim6AkonadiMime          0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6I18n
WANTLIB += KF6ItemModels KF6KIOCore KF6WidgetsAddons KF6XmlGui
WANTLIB += KPim6AkonadiCore KPim6AkonadiPrivate KPim6AkonadiWidgets
WANTLIB += KPim6Mime Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Test
WANTLIB += Qt6Widgets Qt6Xml c m

MODKDE5_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/boost \
		misc/shared-mime-info \
		textproc/libxslt

RUN_DEPENDS =	misc/shared-mime-info \
		textproc/libxslt

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		x11/kde-applications/akonadi>=${MODKDE_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
