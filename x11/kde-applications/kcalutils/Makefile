COMMENT =	library for the handling of calendar data.
DISTNAME =	kcalutils-${VERSION}
CATEGORIES =	productivity

SHARED_LIBS +=  KPim5CalendarUtils        1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5CalendarCore
WANTLIB += KF5Codecs KF5CoreAddons KF5I18n KF5IconThemes KF5WidgetsAddons
WANTLIB += KPim5IdentityManagement Qt5Core Qt5Gui Qt5Widgets m

MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS +=	devel/kf5/kcodecs \
		devel/kf5/kcalendarcore \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kwidgetsaddons \
		x11/grantlee-qt5>=5.3 \
		x11/kde-applications/kidentitymanagement

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
