COMMENT =	KDE PIM TNEF library
DISTNAME =	ktnef-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPim5Tnef                 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5CalendarCore KF5ConfigCore KF5ConfigGui
WANTLIB += KF5Contacts KF5CoreAddons KF5I18n KPim5CalendarUtils
WANTLIB += Qt5Core Qt5Gui Qt5Widgets Qt5Xml m


MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf5/kcalendarcore \
		devel/kf5/kconfig \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		x11/kde-applications/kcalutils

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
