COMMENT =	PIM Akonadi calendar tools
DISTNAME =	akonadi-calendar-tools-${VERSION}
CATEGORIES =	devel

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6ConfigCore
WANTLIB += KF6ConfigGui KF6CoreAddons KF6I18n KF6ItemModels KF6WidgetsAddons
WANTLIB += KPim6AkonadiCalendar KPim6AkonadiCalendarCore KPim6AkonadiCore
WANTLIB += KPim6AkonadiPrivate KPim6CalendarSupport KPim6IdentityManagementCore
WANTLIB += KPim6Mime Qt6Core Qt6DBus Qt6Gui Qt6PrintSupport Qt6Widgets
WANTLIB += c m

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
		x11/kde-applications/akonadi-calendar>=${VERSION} \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/calendarsupport>=${VERSION} \
		x11/kde-applications/kidentitymanagement>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION} \

.include <bsd.port.mk>
