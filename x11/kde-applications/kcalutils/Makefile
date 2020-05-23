# $OpenBSD: Makefile,v 1.4 2020/05/23 06:40:45 rsadowski Exp $

COMMENT =	library for the handling of calendar data.
DISTNAME =	kcalutils-${VERSION}
CATEGORIES =	productivity

SHARED_LIBS +=  KF5CalendarUtils          0.0 # 5.6

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5CalendarCore
WANTLIB += KF5Codecs KF5ConfigCore KF5ConfigGui KF5CoreAddons
WANTLIB += KF5I18n KF5IconThemes KF5IdentityManagement KF5PimTextEdit
WANTLIB += KF5WidgetsAddons Qt5Core Qt5Gui Qt5Widgets Qt5Xml m

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS +=	devel/kf5/kcodecs \
		devel/kf5/kcalendarcore \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kwidgetsaddons \
		x11/grantlee-qt5 \
		x11/kde-applications/kidentitymanagement

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
