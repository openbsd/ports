COMMENT =	KDE PIM TNEF library
DISTNAME =	ktnef-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6Tnef                 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6Contacts KF6CoreAddons
WANTLIB += KF6I18n KPim6CalendarUtils Qt6Core Qt6Gui Qt6Widgets
WANTLIB += m

MODKDE_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf6/kcalendarcore \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		x11/kde-applications/kcalutils>=${MODKDE_GEAR_VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
