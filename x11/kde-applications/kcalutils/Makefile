COMMENT =	library for the handling of calendar data.
DISTNAME =	kcalutils-${VERSION}
CATEGORIES =	productivity

SHARED_LIBS +=	KPim6CalendarUtils        0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6Codecs KF6CoreAddons
WANTLIB += KF6I18n KF6IconThemes KF6TextTemplate KF6WidgetsAddons
WANTLIB += KPim6IdentityManagementCore Qt6Core Qt6Gui Qt6Widgets
WANTLIB += m

MODKDE_TRANSLATIONS = yes

LIB_DEPENDS +=	devel/kf6/kcalendarcore \
		devel/kf6/kcodecs \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/ktexttemplate \
		devel/kf6/kwidgetsaddons \
		x11/kde-applications/kidentitymanagement>=${MODKDE_VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
