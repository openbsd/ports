COMMENT =	PIM Akonadi calendar tools
DISTNAME =	akonadi-calendar-tools-${VERSION}
CATEGORIES =	devel

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6ConfigCore
WANTLIB += KF6ConfigGui KF6CoreAddons KF6I18n KF6ItemModels KF6WidgetsAddons
WANTLIB += KPim6AkonadiCalendar KPim6AkonadiCore KPim6CalendarSupport
WANTLIB += KPim6IdentityManagementCore KPim6Mime Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6PrintSupport Qt6Widgets c m

MODKDE_TRANSLATIONS = yes
MODKDE_ICON_CACHE = yes
MODKDE_DESKTOP_FILE = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcalendarcore \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kitemmodels \
		devel/kf6/kwidgetsaddons \
		x11/kde-applications/akonadi-calendar>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/akonadi>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/calendarsupport>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kidentitymanagement>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_GEAR_VERSION} \

.include <bsd.port.mk>
