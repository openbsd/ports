COMMENT =	PIM Akonadi calendar tools
DISTNAME =	akonadi-calendar-tools-${VERSION}
CATEGORIES =	devel

WANTLIB += ${COMPILER_LIBCXX} KF5CalendarCore KF5ConfigCore KF5ConfigGui
WANTLIB += KF5CoreAddons KF5I18n KF5ItemModels KF5WidgetsAddons
WANTLIB += KPim5AkonadiCalendar KPim5AkonadiCore KPim5CalendarSupport
WANTLIB += KPim5IdentityManagement KPim5Mime Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5PrintSupport Qt5Widgets Qt5Xml c m

MODKDE5_TRANSLATIONS = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_DESKTOP_FILE = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcalendarcore \
		devel/kf5/ki18n \
		devel/kf5/kitemmodels \
		devel/kf5/kwidgetsaddons \
		x11/kde-applications/akonadi \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/akonadi-calendar \
		x11/kde-applications/kmime \
		x11/kde-applications/calendarsupport

.include <bsd.port.mk>
